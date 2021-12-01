<?php

/*
 * State constants
 */
const ST_GAME_SETUP = 1;

const ST_NEW_TURN = 3;
const ST_PLAYER_TURN = 4;
const ST_APPLY_TURNS = 5;

// Parallel flow
const ST_CHOOSE_CARDS = 20;
const ST_WRITE_NUMBER = 21;
const ST_ACTION_SURVEYOR = 22;
const ST_ACTION_ESTATE = 23;
const ST_ACTION_BIS = 24;
const ST_ACTION_PARK = 25;
const ST_ACTION_POOL = 26;
const ST_ACTION_TEMP = 27;

const ST_CHOOSE_PLAN = 30;
const ST_VALIDATE_PLAN = 31;
const ST_ASK_RESHUFFLE = 32;

const ST_CONFIRM_TURN = 40;
const ST_WAIT_OTHERS = 41;

const ST_ROUNDABOUT = 50;

const ST_ICE_CREAM = 60;



const ST_COMPUTE_SCORES = 90;

const ST_GAME_END = 99;


/*
 * Options constants
 */
const OPTION_ADVANCED = 100;
const OFF = 0;
const ON = 1;


const OPTION_EXPERT = 101;


const OPTION_BOARD = 102;
const OPTION_BOARD_BASE = 0;
const OPTION_BOARD_ICE_CREAM = 1;
const OPTION_BOARD_CHRISTMAS = 2;


/*
 * User preference
 */
const AUTOMATIC = 101;
const DISABLED = 1;
const ENABLED = 2;

const CONFIRM = 102;
const CONFIRM_TIMER = 1;
const CONFIRM_ENABLED = 2;
const CONFIRM_DISABLED = 3;

const END_OF_TURN_ANIMATION = 103;


/*
 * Global game variables
 */
const GLOBAL_CURRENT_TURN = 20;


const SURVEYOR = 1;
const ESTATE = 2;
const PARK = 3;
const POOL = 4;
const TEMP = 5;
const BIS = 6;
const SOLO = 7;

define('ACTION_NAMES', [
  SURVEYOR => clienttranslate("Surveyor"),
  ESTATE   => clienttranslate("Real Estate Agent"),
  PARK     => clienttranslate("Landscaper"),
  POOL     => clienttranslate("Pool Manufacturer"),
  TEMP     => clienttranslate("Temp agency"),
  BIS      => clienttranslate("Bis")
]);


const ROUNDABOUT = 100;

/*
 * City plans
 */
const BASIC = 1;
const ADVANCED = 2;
const ICE_CREAM = 3;
const CHRISTMAS = 4;

/*
 * Stats
 */
const STAT_TURNS = 105;
const STAT_EOG = 109;


const STAT_HOUSES = 30;
const STAT_ROUNDABOUTS = 31;
const STAT_EMPTY_SLOT = 32;
const STAT_REFUSAL = 33;
const STAT_PROJECTS_FIRST = 34;
const STAT_PROJECTS_SECOND = 35;

const STAT_SURVEYOR_SELECTED = 40;
const STAT_SURVEYOR_USED = 41;

const STAT_REAL_ESTATE_SELECTED = 42;
const STAT_REAL_ESTATE_USED = 43;

const STAT_LANDSCAPER_SELECTED = 44;
const STAT_LANDSCAPER_USED = 45;

const STAT_POOLS_SELECTED = 46;
const STAT_POOLS_USED = 47;

const STAT_TEMPORARY_WORKERS_SELECTED = 48;
const STAT_TEMPORARY_WORKERS_USED = 49;

const STAT_BIS_SELECTED = 50;
const STAT_BIS_USED = 51;


const STAT_ESTATE_1 = 60;
const STAT_ESTATE_2 = 61;
const STAT_ESTATE_3 = 62;
const STAT_ESTATE_4 = 63;
const STAT_ESTATE_5 = 64;
const STAT_ESTATE_6 = 65;


const STAT_SCORING_PLAN = 70;
const STAT_SCORING_PARK = 71;
const STAT_SCORING_POOL = 72;
const STAT_SCORING_TEMP = 73;
const STAT_SCORING_ESTATE_1 = 74;
const STAT_SCORING_ESTATE_2 = 75;
const STAT_SCORING_ESTATE_3 = 76;
const STAT_SCORING_ESTATE_4 = 77;
const STAT_SCORING_ESTATE_5 = 78;
const STAT_SCORING_ESTATE_6 = 79;
const STAT_SCORING_ESTATE_TOTAL = 80;
const STAT_SCORING_BIS = 81;
const STAT_SCORING_ROUNDABOUT = 82;
const STAT_SCORING_PERMIT_REFUSAL = 83;
