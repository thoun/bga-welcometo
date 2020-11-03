<?php
namespace WTO;
use welcometo;

/*
 * Houses manager : allows to easily access houses ...
 */
class Houses extends Helpers\DB_Manager
{
  protected static $table = 'houses';
  protected static $primary = 'id';
  protected static function cast($row)
  {
    return $row;
  }

  protected static $streetSizes = [10, 11, 12];

  /*
   * 2D array of null matching the structure of the streets
   */
  protected function getBlankStreets($value = null)
  {
    $streets = [];
    foreach(self::$streetSizes as $size){
      $street = [];
      for($i = 0; $i < $size; $i++){
        $street[$i] = $value;
      }
      $streets[] = $street;
    }

    return $streets;
  }

  /*
   * get : returns the houses of given player id
   */
  public function get($pId)
  {
    return self::DB()->where('player_id', $pId)->get(false);
  }


  /*
   * getStreets : 2D array of houses/null
   */
  public function getStreets($pId)
  {
    $streets = self::getBlankStreets();
    foreach(self::get($pId) as $house){
      $streets[$house['x']][$house['y']] = [
        'number' => $house['number'],
        'bis' => (bool) $house['is_bis'],
        'turn' => $house['turn'],
      ];
    }

    return $streets;
  }


  /*
   * getAvailableLocations of a given number
   */
  public function getAvailableLocations($pId, $number, $isBis = false)
  {
    // Init all locations to be available
    $locations = self::getBlankStreets(true);
    $streets = self::getStreets($pId);

    // Filter the location to enforce increasing left to right
    for($x = 0; $x < 3; $x++){
      $maxNumber = 0;
      $hole = 0; // Useful to ensure bis numbers are next to the the house they are copying
      for($y = 0; $y < self::$streetSizes[$x]; $y++){
        // If the location is empty
        if(is_null($streets[$x][$y])){
          // Check condition with biggest value on left so far
          $locations[$x][$y] = $number > $maxNumber || ($number == $maxNumber && $isBis && $hole == 0);
          $hole++;
        } else {
          // Not empty => not available and update max number
          $locations[$x][$y] = false;
          $hole = 0;
          $maxNumber = ($streets[$x][$y]['number'] == ROUNDABOUT)? 0 : $streets[$x][$y]['number'];
        }
      }
    }

    // Second right to left traversal
    for($x = 0; $x < 3; $x++){
      $minNumber = 16;
      $hole = 0;
      for($y = self::$streetSizes[$x] - 1; $y >= 0; $y--){
        if(is_null($streets[$x][$y])){
          $locations[$x][$y] = $locations[$x][$y] && ($number < $minNumber || ($number == $maxNumber && $isBis && $hole == 0));
          $hole++;
        } else {
          $locations[$x][$y] = false;
          $hole = 0;
          $minNumber = ($streets[$x][$y]['number'] == ROUNDABOUT)? 16 : $streets[$x][$y]['number'];
        }
      }
    }

    // Last traversal to output locations
    $result = [];
    for($x = 0; $x < 3; $x++){
      for($y = 0; $y < self::$streetSizes[$x]; $y++){
        if($locations[$x][$y]){
          array_push($result, ['x' => $x, 'y' => $y]);
        }
      }
    }

    return $result;
  }
}
