<?php
namespace WTO\Actions;

/*
 * RealEstate : manage everything related to real estates
 */
class RealEstate extends Zone
{
  protected static $type = "score-estate";
  protected static $cols = [1,2,3,4,4,4];

  public function getMultipliers($pId)
  {

  }
}