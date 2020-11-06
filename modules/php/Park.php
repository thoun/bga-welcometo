<?php
namespace WTO;

/*
 * Park : manage everything related to park
 */
class Park extends Helpers\Zone
{
  protected static $type = "park";
  protected static $cols = [3,4,5];

  public function getAvailableZones($player)
  {
    // Keep only the park on the same street as the house we just built
    $zones = parent::getAvailableZones($player);
    $house = $player->getLastHouse();
    Helpers\Utils::filter($zones, function($zone) use ($house){
      return $zone[0] == $house['x'];
    });

    return $zones;
  }

  public function getScores($pId)
  {

  }
}
