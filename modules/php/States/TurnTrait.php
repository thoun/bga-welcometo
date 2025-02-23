<?php
namespace WTO\States;

use WTO\Game\Globals;
use WTO\Game\StateMachine;
use WTO\Game\Notifications;
use WTO\Game\Players;
use WTO\Game\Stats;
use WTO\ConstructionCards;
use WTO\PlanCards;
use \WTO\Helpers\QueryBuilder;

/*
 * Handle the public start and end of a turn
 */

trait TurnTrait
{
  /*
   * Game state that init a new turn
   */
  function stNewTurn()
  {
    // Discard used cards
    ConstructionCards::discard();


    // Reshuffle if asked
    if(PlanCards::askedForReshuffle()){
      ConstructionCards::reshuffle();
    }

    // Draw new cards
    ConstructionCards::draw();

    // Set stat
    Stats::newTurn();

    // Add time
    foreach (Players::getAll() as $player) {
      self::giveExtraTime($player->getId());
    }


    StateMachine::initPrivateStates(ST_PLAYER_TURN);
    $this->gamestate->nextState("playerTurn");
  }


  /*
   * Multi-active state where each player can take their turn
   */
  function stPlayerTurn()
  {
    $ids = Players::getAll()->getIds();
    $this->gamestate->setPlayersMultiactive($ids, '');
  }

  /*
   * The arg depends on the private state of each player
   */
  function argPlayerTurn()
  {
    return StateMachine::getArgs();
  }

  /*
   * Fetch the basic info a player should have no matter in which private state he is :
   *   - selected construction cards (if any)
   *   - cancelable flag on if an action was already done by user
   */
  function argPrivatePlayerTurn($player)
  {
    if($player->isZombie()){
      return [];
    }

    $data = [
      'selectedCards' => $player->getSelectedCards(),
      'selectedPlans' => $player->getSelectedPlans(),
      'cancelable' => $player->hasSomethingToCancel(),
    ];

    return $data;
  }

  /*
   *
   */
  function stApplyTurn()
  {
    // In expert mode, prepare non-used cards for next player
    if(Globals::isExpert()){
      foreach(Players::getAll() as $player){
        if(!$player->isZombie()){
          $player->giveThirdCardToNextPlayer();
        }
      }
    }


    // Increase turn number
    $n = (int) self::getGamestateValue('currentTurn') + 1;
    self::setGamestateValue("currentTurn", $n);

    // Compute, store and notify new scores/datas
    foreach (Players::getAll() as $player) {
      $player->storeScore();
    }

    Notifications::updatePlayersData();
    Stats::updatePlayersData();

    $newState = $this->isEndOfGame()? "endGame" : "newTurn";
    $this->gamestate->nextState($newState);
  }
}
