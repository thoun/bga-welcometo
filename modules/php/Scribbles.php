<?php
namespace WTO;
use WTO\Game\Globals;
use WTO\Game\Players;

/*
 * Scribbles
 */
class Scribbles extends Helpers\Pieces
{
  protected static $table = 'scribbles';
  protected static $prefix = 'scribble_';
  protected static $customFields = ['turn'];
  protected static function cast($scribble)
  {
    $data = explode('_', $scribble['location']);
    return [
      'id' => $scribble['id'],
      'pId' => $data[0],
      'type' => $data[1],
      'x' => $data[2] ?? null,
      'y' => $data[3] ?? null,
      'turn' => $scribble['turn'],
      'state' => $scribble['state'],
    ];
  }

  public static function getOfPlayer($player, $location = '%')
  {
    $pId = $player instanceof \WTO\Player ? $player->getId() : $player;
    $query = self::getInLocationQ([$pId, $location]);

    try {
      // Filter out the scribbles of current turn if not current player
      if (Players::getCurrentId() != $pId) {
        $query = $query->where('turn', '<', Globals::getCurrentTurn());
      }
    } finally {
      return $query->get(false)->toArray();
    }
  }

  public static function hasScribbleSomething($pId)
  {
    return self::getInLocationQ([$pId, '%'])
      ->where('turn', Globals::getCurrentTurn())
      ->count() > 0;
  }

  /*
   * clearTurn : remove all houses written by player during this turn
   */
  public static function clearTurn($pId)
  {
    self::getInLocationQ([$pId, '%'])
      ->where('turn', Globals::getCurrentTurn())
      ->delete()
      ->run();
  }

  /*
   * Add a new scribble
   */
  public static function add($pId, $type, $zone, $turn = null)
  {
    $state = 0;
    if (isset($zone['state'])) {
      $state = $zone['state'];
      unset($zone['state']);
    }
    $location = array_merge([$pId, $type], $zone);
    // Sanity check : already exists ?
    $scribble = self::getTopOf($location);
    if (!is_null($scribble)) {
      return false;
    }

    $id = self::create([
      [
        'location' => $location,
        'turn' => $turn ?? Globals::getCurrentTurn(),
        'state' => $state,
      ],
    ]);

    return self::get($id);
  }
}
