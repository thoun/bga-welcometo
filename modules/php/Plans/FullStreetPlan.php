<?php
namespace WTO\Plans;
use \WTO\Scribbles;
use \WTO\Game\Notifications;
use \WTO\Actions\TopFence;


class FullStreetPlan extends AbstractPlan
{
  protected $automatic = true;
  public function __construct($info, $card = null){
    parent::__construct($info, $card);

    $this->desc = [
      clienttranslate("To fulfill this City Plan, all houses must be built on the required street (roundabout also works)."),
      clienttranslate("Warning: you cannot re-use a house already used for another city plan!"),
    ];
  }


  public function canBeScored($player)
  {
    if(!parent::canBeScored($player))
      return false;

    // Check if house are already used
    $notUsed = true;
    foreach(TopFence::getOfPlayerStructured($player)[$this->conditions] as $fence)
      $notUsed = $notUsed && is_null($fence);

    // Get empty locations
    $locations = $player->getAvailableHousesForNumber(null);
    return $notUsed && \array_reduce($locations, function($carry, $location){
      return $carry && $location[0] != $this->conditions;
    }, true);
  }

  public function validate($player, $args){
    $scribbles = [];
    $streets = $player->getStreets();
    $x = $this->conditions;
    foreach($streets[$x] as $y => $house){
      $zone = [$x, $y];
      array_push($scribbles, Scribbles::add($player->getId(), 'top-fence', $zone) );
    }
    Notifications::addMultipleScribbles($player, $scribbles);
    parent::validate($player, $args);
  }
}
