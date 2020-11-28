<?php
namespace WTO\Game;
use welcometo;
use \WTO\PlanCards;

class Notifications
{
  protected static function notifyAll($name, $msg, $data){
    $data['moveId'] = Globals::getMoveId();
    $data['i18n'] = ['moveId'];
    welcometo::get()->notifyAllPlayers($name, $msg, $data);
  }

  protected static function notify($pId, $name, $msg, $data){
    $data['moveId'] = Globals::getMoveId();
    $data['i18n'] = ['moveId'];
    welcometo::get()->notifyPlayer($pId, $name, $msg, $data);
  }

  public static function message($txt, $args = []){
    self::notifyAll('message', $txt, $args);
  }

  public static function messageTo($player, $txt, $args = []){
    $pId = ($player instanceof \WTO\Player)? $player->getId() : $player;
    self::notify($pId, 'message', $txt, $args);
  }



  public static function soloCard(){
    self::notifyAll('soloCard', clienttranslate('The solo card was drawn'), []);
  }

  public static function newCards($pId, $cards){
    $data = [
      'cards' => $cards,
      'turn' => Globals::getCurrentTurn(),
    ];

    if(is_null($pId)){
      self::notifyAll('newCards', '', $data);
    } else {
      self::notify($pId, 'newCards', '', $data);
    }
  }

  public static function reshuffle(){
    self::notifyAll('reshuffle', clienttranslate("First player who completed a goal asked for reshuffling the cards"), []);
  }


  public static function giveThirdCardToNextPlayer($pId, $stackId, $nextPId){
    self::notify($pId, 'giveCard', '', [
      'stack' => $stackId,
      'pId' => $nextPId,
    ]);
  }


  public static function writeNumber($player, $house){
    self::notify($player->getId(), 'writeNumber', '', [
      'house' => $house,
    ]);
  }

  public static function addScribble($player, $scribble){
    self::notify($player->getId(), 'addScribble', '', [
      'scribble' => $scribble,
    ]);
  }

  public static function addMultipleScribbles($player, $scribbles){
    self::notify($player->getId(), 'addMultipleScribbles', '', [
      'scribbles' => $scribbles,
    ]);
  }

  public static function planScored($player, $planId, $validations){
    self::notify($player->getId(), "scorePlan", '', [
      'validation' => $validations[$player->getId()],
      'planId' => $planId
    ]);
  }


  public static function clearTurn($player, $moveIds){
    self::notify($player->getId(), 'clearTurn', clienttranslate('You restart your turn'), [
      'turn' => Globals::getCurrentTurn(),
      'moveIds' => $moveIds,
    ]);
  }


  public static function updateScores($player){
    self::notify($player->getId(), 'updateScores', '', [
      'scores' => $player->getScores(),
    ]);
  }

  public static function updatePlayersData(){
    self::notifyAll('updatePlayersData', '', [
      'players' => Players::getUiData(),
      'planValidations' => PlanCards::getCurrentValidations(),
      'turn' => Globals::getCurrentTurn() - 1, // Already incremented turn before calling this notif
    ]);
  }
}

?>
