{OVERALL_GAME_HEADER}

<div id="welcometo-container">
  <div id="construction-cards-container">
    <div id="construction-cards-container-sticky">
      <div id="construction-cards-container-resizable">
        <div id="construction-cards-stack-0" class="construction-cards-stack"></div>
        <div id="construction-cards-stack-1" class="construction-cards-stack"></div>
        <div id="construction-cards-stack-2" class="construction-cards-stack"></div>
      </div>
    </div>
  </div>

  <div id="player-score-sheet">
    <div id="player-score-sheet-resizable"></div>
  </div>

  <div id="plan-cards-container">
    <div id="plan-cards-container-sticky">
      <div id="plan-cards-container-resizable">
      </div>
    </div>
  </div>
</div>

<audio id="audiosrc_o_welcometo_scribble" src="{GAMETHEMEURL}/img/sound/scribble.ogg" autobuffer></audio>
<audio id="audiosrc_welcometo_scribble" src="{GAMETHEMEURL}/img/scribble.mp3" autobuffer></audio>

<link ref="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.6.0/nouislider.min.css" type="text/css" />
<script type="text/javascript">

///// LAYOUT CONTROLS //////
var jstpl_layoutControls = `
  <div class='upperrightmenu_item layoutControlsHidden' id="layout-controls-container">
    <svg id="layout-button" aria-hidden="true" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M64 311.4V496c0 8.8 7.2 16 16 16h416c8.8 0 16-7.2 16-16V311.4c-6.7-5.5-44.7-38.3-224-196.4C107.9 273.9 70.4 306.1 64 311.4zm314.1-26.3c27.6 23 29.1 64.2 4.5 89.1l-84.7 85.6c-5.5 5.5-14.3 5.5-19.8 0l-84.7-85.6c-24.6-24.9-23.2-66.1 4.3-89.1 24-20 59.7-16.4 81.6 5.8l8.6 8.7 8.6-8.7c22-22.2 57.7-25.8 81.6-5.8zM64 311.4v-.3s-2.7 2.5 0 .3zm506.7-75.1L512 184.5V48c0-8.8-7.2-16-16-16h-64c-8.8 0-16 7.2-16 16v51.7L314.7 10.3c-15.3-13.7-38.2-13.7-53.5 0l-256 226c-6.6 5.9-7.1 16-1.2 22.6l21.4 23.8c5.9 6.6 16 7.1 22.6 1.2L277.4 81.7c6-5.3 15.1-5.3 21.2 0L527.9 284c6.6 5.9 16.7 5.4 22.6-1.2l21.4-23.8c5.9-6.7 5.4-16.8-1.2-22.7zM512 311.1v.3c2.9 2.3 0-.3 0-.3z"></path></svg>
    <div id='layout-controls'>
      <div class="button-group">
        <div class="bgabutton bgabutton_gray" id="layout-control-0">Horizontal</div>
        <div class="bgabutton bgabutton_gray" id="layout-control-1">Vertical</div>
      </div>

      <div id="layout-control-range"></div>
    </div>
  </div>
`;


///// ICON IN PLAYER BOARD /////
var jstpl_playerBoard = `
<div class="welcometo-player-board">
  <div id="show-streets-\${id}" class="show-streets-button">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
      <g class="fa-group">
        <path class="fa-secondary" fill="currentColor" d="M116 352H76a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12zm0-96H76a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12zm0-96H76a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12zm128 192h-40a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12zm0-96h-40a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12zm0-96h-40a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12zm320 192h-40a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12zm0-96h-40a12 12 0 0 0-12 12v40a12 12 0 0 0 12 12h40a12 12 0 0 0 12-12v-40a12 12 0 0 0-12-12z" opacity="0.4" />
        <path class="fa-primary" fill="currentColor" d="M616 192H480V24a24 24 0 0 0-24-24H312a24 24 0 0 0-24 24v72h-64V16a16 16 0 0 0-16-16h-16a16 16 0 0 0-16 16v80h-64V16A16 16 0 0 0 96 0H80a16 16 0 0 0-16 16v80H24a24 24 0 0 0-24 24v360a32 32 0 0 0 32 32h576a32 32 0 0 0 32-32V216a24 24 0 0 0-24-24zM128 404a12 12 0 0 1-12 12H76a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm0-96a12 12 0 0 1-12 12H76a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm0-96a12 12 0 0 1-12 12H76a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm128 192a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm0-96a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm0-96a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm160 96a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm0-96a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm0-96a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12V76a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm160 288a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12zm0-96a12 12 0 0 1-12 12h-40a12 12 0 0 1-12-12v-40a12 12 0 0 1 12-12h40a12 12 0 0 1 12 12z" />
      </g>
    </svg>
  </svg>
</div>`;


/////////////////////
////// CARDS  ///////
/////////////////////
var jstpl_constructionCard = `
<div id="construction-card-\${id}" data-action="\${action}" data-number="\${number}" class="construction-card-holder">
  <div class="construction-card-back">
    <div class="action"></div>
  </div>
  <div class="construction-card-front">
    <div class="top-right-corner"></div>
    <div class="bottom-left-corner"></div>
    <div class="number"></div>
  </div>
</div>`;

var jstpl_planCard = `
<div id="plan-card-\${id}" data-id="\${id}" class="plan-card-holder">
  <div class="plan-card-front">
    <div id="plan-card-\${id}-0" class="plan-validation-0">
      <div class="stamp"></div>
    </div>

    <div id="plan-card-\${id}-1" class="plan-validation-1">
      <div class="stamp"></div>
    </div>
  </div>
</div>`;



/////////////////////
//// SCORE SHEET ////
/////////////////////
var jstpl_scoreSheet = `
<div class="score-sheet-container">
  <div id="score-sheet-\${pId}" class="score-sheet"></div>
</div>`;


//// TOP PART ////
var jstpl_cityName = '<div id="${pId}_cityname" class="cityname" style="color:#${color}">${name}</div>';
var jstpl_house = '<div id="${pId}_house_${x}_${y}" data-x="${x}" data-y="${y}" class="house"></div>';
var jstpl_topFence = '<div id="${pId}_top-fence_${x}_${y}" data-x="${x}" data-y="${y}" class="top-fence"></div>';
var jstpl_estateFence = '<div id="${pId}_estate-fence_${x}_${y}" data-x="${x}" data-y="${y}" class="estate-fence"></div>';
var jstpl_park = `<div id="\${pId}_park_\${x}_\${y}" data-x="\${x}" data-y="\${y}" class="park">
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 49 47" class="highlight">
    <path class="park-black" d="M 8.82,14.18 C 6.82,10.45 10.27,3.00 19.55,5.91 19.45,1.09 29.64,-1.09 31.55,6.55 35.36,3.64 44.45,7.36 40.91,14.91
             49.22,17.80 46.27,24.55 42.82,27.18 46.92,32.83 40.73,37.73 36.91,37.00 36.84,46.08 26.97,44.41 25.27,41.18
             23.45,44.55 13.82,45.91 13.82,36.82 6.36,38.36 2.93,31.22 6.91,27.18 2.60,25.95 0.09,15.18 8.82,14.18" />
    <path class="park-white" d="M 8.82,14.18 C 6.82,10.45 10.27,3.00 19.55,5.91 19.45,1.09 29.64,-1.09 31.55,6.55 35.36,3.64 44.45,7.36 40.91,14.91
             49.22,17.80 46.27,24.55 42.82,27.18 46.92,32.83 40.73,37.73 36.91,37.00 36.84,46.08 26.97,44.41 25.27,41.18
             23.45,44.55 13.82,45.91 13.82,36.82 6.36,38.36 2.93,31.22 6.91,27.18 2.60,25.95 0.09,15.18 8.82,14.18" />
  </svg>
</div>`;
var jstpl_pool = `<div id="\${pId}_pool_\${x}_\${y}" data-x="\${x}" data-y="\${y}" class="pool">
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" class="ladder">
    <path  d="M 216,399.37 V 288 h 208 v 111.37 c 14.22,-1.43 23.4,-6.04 26.39,-8.79 6.79,-6.26 14.09,-10.98 21.61,-14.67 V 120 c 0,-22.06 17.94,-40 40,-40 22.06,0 40,17.94 40,40 v 24 c 0,8.84 7.16,16 16,16 h 16 c 8.84,0 16,-7.16 16,-16 v -24 c 0,-48.53 -39.47,-88 -88,-88 -48.53,0 -88,39.47 -88,88 V 240 H 216 V 120 c 0,-22.06 17.94,-40 40,-40 22.06,0 40,17.94 40,40 v 24 c 0,8.84 7.16,16 16,16 h 16 c 8.84,0 16,-7.16 16,-16 v -24 c 0,-48.53 -39.47,-88 -88,-88 -48.53,0 -88,39.47 -88,88 v 255.9 c 7.52,3.69 14.82,8.41 21.61,14.67 2.98,2.76 12.17,7.38 26.39,8.8 z" />
    <path d="m 624,432 h -16 c -26.04,0 -45.8,-8.42 -56.09,-17.9 -8.9,-8.21 -19.66,-14.1 -31.77,-14.1 h -16.3 c -12.11,0 -22.87,5.89 -31.77,14.1 -10.27,9.48 -30.03,17.9 -56.07,17.9 -26.04,0 -45.8,-8.42 -56.09,-17.9 -8.9,-8.21 -19.66,-14.1 -31.77,-14.1 h -16.3 c -12.11,0 -22.87,5.89 -31.77,14.1 -10.27,9.48 -30.03,17.9 -56.07,17.9 -26.04,0 -45.8,-8.42 -56.09,-17.9 -8.9,-8.21 -19.66,-14.1 -31.77,-14.1 h -16.3 c -12.11,0 -22.87,5.89 -31.77,14.1 C 77.8,423.58 58.04,432 32,432 H 16 c -8.84,0 -16,7.16 -16,16 v 16 c 0,8.84 7.16,16 16,16 h 16 c 38.62,0 72.72,-12.19 96,-31.84 23.28,19.66 57.38,31.84 96,31.84 38.62,0 72.72,-12.19 96,-31.84 23.28,19.66 57.38,31.84 96,31.84 38.62,0 72.72,-12.19 96,-31.84 23.28,19.66 57.38,31.84 96,31.84 h 16 c 8.84,0 16,-7.16 16,-16 v -16 c 0,-8.84 -7.16,-16 -16,-16 z" />
    </clipPath>
  </svg>
</div>`;

var jstpl_houseNumber = '<div class="house-number" data-turn="${turn}">${number}${bis}</div>';
var jstpl_estate = `
<div class="estate" data-size="\${size}" data-x="\${x}" data-y="\${y}" style="left:\${left}px; top:\${top}px; width:\${width}px; height:\${height}px">
  <svg xmlns="http://www.w3.org/2000/svg">
    <rect width="100%" height="100%" />
    <rect width="100%" height="100%" />
  </svg>
</div>`;


//// BOTTOM PART ////
var jstpl_scorePool = '<div id="${pId}_score-pool_${x}" data-x="${x}" class="score-pool"></div>';
var jstpl_scoreTemp = '<div id="${pId}_score-temp_${x}" data-x="${x}" class="score-temp"></div>';
var jstpl_scoreEstate = '<div id="${pId}_score-estate_${x}_${y}" data-x="${x}" data-y="${y}" class="score-estate"></div>';
var jstpl_scoreBis = '<div id="${pId}_score-bis_${x}" data-x="${x}" class="score-bis"></div>';
var jstpl_permitRefusal = '<div id="${pId}_permit-refusal_${x}" data-x="${x}" class="permit-refusal"></div>';

var jstpl_scoreCounter = '<div id="${pId}_score_${id}" class="score-counter score_${id}"></div>';





var jstpl_scribble = `
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 533.33331 533.33331" class="scribble" data-turn="\${turn}" id="scribble-\${id}">
	<clipPath id="scribble-clip-path">
    <path
       d="m 32.923611,508.08566 c -3.525347,-1.37744 -7.275347,-3.22284 -8.333333,-4.10089 -2.500036,-2.07484 -2.493339,-13.22218 0.01999,-33.26993 2.828011,-22.55787 5.432635,-33.85848 18.285135,-79.33333 2.6775,-9.47356 7.507377,-23.96985 11.139537,-33.434 5.001867,-13.03312 5.198376,-13.51892 9.667383,-23.89933 2.210018,-5.13333 8.345854,-19.53333 13.63519,-32 9.72597,-22.92356 41.297687,-89.05874 48.374667,-101.33333 2.11404,-3.66667 4.94242,-7.56667 6.2853,-8.66667 2.49272,-2.04186 4.12886,-4.76201 12.02981,-19.99999 15.94965,-30.76096 43.05165,-71.37473 60.5651,-90.76004 4.71314,-5.21687 4.8135,-5.25389 8.20978,-3.02857 4.54054,2.97509 3.72253,7.0516 -4.08867,20.375379 -9.68825,16.525521 -15.85743,30.806451 -14.06897,32.568011 1.1476,1.13032 2.02904,0.83888 3.49258,-1.15478 1.07668,-1.46667 4.45655,-5.59476 7.51082,-9.17353 3.05425,-3.57878 11.382,-15.06358 18.50607,-25.5218 7.1241,-10.45821 21.10384,-30.00872 31.06611,-43.44556 9.96227,-13.43685 18.11321,-25.43989 18.11321,-26.67342 0,-2.879882 8.00017,-9.905978 15.33921,-13.471563 l 5.70978,-2.7740193 4.80852,2.9718303 c 8.71185,5.384223 16.80916,17.227152 16.80916,24.584692 0,3.17056 -16.11668,35.60902 -23.27027,46.8367 -2.33619,3.66667 -7.74531,13.26667 -12.02028,21.33334 -4.27497,8.06666 -9.50924,17.90059 -11.63168,21.85316 -2.12245,3.95257 -5.3444,8.35491 -7.15988,9.78297 -3.47498,2.73341 -16.00816,23.10097 -22.114,35.93726 -1.98134,4.16538 -5.44777,9.50436 -7.70317,11.86443 -4.35263,4.55461 -5.11264,7.68358 -2.50072,10.2955 2.54297,2.54298 3.39775,1.98682 7.27492,-4.73333 2.00971,-3.48333 7.585,-12.21513 12.38955,-19.40398 4.80454,-7.18887 11.22642,-16.97032 14.27086,-21.73659 14.55005,-22.77908 32.62409,-44.27258 40.47943,-48.1378 3.29188,-1.619771 6.40705,-2.969771 6.92261,-3.000001 0.51556,-0.0302 5.1534,3.695041 10.30632,8.278381 9.83107,8.74438 11.16851,11.84132 7.73665,17.91475 -0.90585,1.60311 -3.68486,6.39969 -6.17557,10.65907 -2.49072,4.25937 -9.29688,16.74773 -15.1248,27.75191 -5.82793,11.00418 -11.63813,21.2076 -12.91157,22.67426 -1.27344,1.46667 -3.03844,5.20688 -3.92222,8.31157 -0.89544,3.14571 -2.82188,6.29518 -4.35118,7.11364 -1.51308,0.80978 -5.30247,6.95112 -8.44616,13.68842 -3.136,6.72084 -8.1379,17.46313 -11.11534,23.87177 -2.97742,6.40864 -7.33277,14.32459 -9.67853,17.591 -2.66509,3.71108 -3.94565,6.77116 -3.41368,8.15747 0.49211,1.28241 -0.84194,5.55066 -3.16165,10.11553 -2.20713,4.34336 -4.01297,8.83834 -4.01297,9.98886 0,1.15051 -1.70151,3.68256 -3.78111,5.62679 -4.78809,4.47636 -9.42012,16.7552 -10.31623,27.34684 -0.6875,8.12605 -0.67461,8.16365 1.70228,4.96181 1.31728,-1.77445 6.79744,-11.67445 12.17815,-22 24.15278,-46.34907 39.65166,-73.12447 64.74716,-111.8553 9.05894,-13.981 24.97242,-36.16569 27.43866,-38.25173 0.4335,-0.36667 3.09011,-3.51667 5.90357,-7 2.81348,-3.48333 5.74588,-6.33333 6.51647,-6.33333 0.77059,0 2.34831,-0.84026 3.50605,-1.86722 1.15775,-1.02697 4.41819,-2.82277 7.24544,-3.99065 5.1285,-2.11849 5.14914,-2.11415 8.86828,1.86721 2.05031,2.19487 4.9517,3.99066 6.44752,3.99066 1.49584,0 3.08044,0.58369 3.52136,1.2971 0.44091,0.7134 3.2217,1.94875 6.17954,2.74522 6.84277,1.84256 10.40825,8.6986 7.99474,15.37304 -0.81688,2.25901 -1.48522,5.63097 -1.48522,7.49324 0,1.86226 -1.52966,5.64001 -3.39924,8.39498 -3.58103,5.27695 -3.36854,7.56703 0.47916,5.16411 3.7567,-2.34611 11.21369,-0.39963 16.82674,4.39224 2.882,2.46037 6.29659,4.4734 7.58798,4.4734 1.29138,0 2.7511,0.65227 3.24381,1.44949 0.49271,0.79722 2.0885,1.1376 3.54622,0.7564 2.53536,-0.66301 4.40048,-0.12773 13.98455,4.01361 7.40003,3.1976 12.01679,8.18219 16.94888,18.29924 2.63004,5.39492 4.78189,10.71175 4.78189,11.81518 0,2.56058 2.02076,4.00846 8.66667,6.2097 6.56744,2.17524 22.0482,11.68239 24.39133,14.97936 0.94856,1.33471 3.3681,5.58806 5.37673,9.45188 3.62408,6.97132 3.63602,7.08131 1.55826,14.35847 -2.49133,8.72568 -6.08099,17.11657 -8.53519,19.9512 -0.9756,1.12684 -2.09562,4.5988 -2.48893,7.71546 -0.67472,5.34655 -0.52677,5.66667 2.61895,5.66667 1.83374,0 5.11701,1.05 7.29615,2.33333 3.7734,2.22223 4.02446,2.22223 5.27198,0 0.72044,-1.28333 1.93745,-2.33333 2.70448,-2.33333 3.01069,0 9.29825,5.79875 11.18573,10.31613 2.795,6.68939 2.68995,12.72087 -0.43576,25.0172 -1.49131,5.86667 -3.12843,13.36667 -3.63804,16.66667 -1.22296,7.91902 -4.63264,21.42521 -6.12099,24.24604 -0.69233,1.31212 -0.68921,3.55026 0.008,5.38273 2.4392,6.41559 -4.8344,18.57733 -13.79859,23.07179 -2.04566,1.02565 -2.90014,3.07996 -3.42019,8.22273 -0.42,4.15328 -1.73388,8.01837 -3.33333,9.8057 -3.54668,3.96332 -11.09199,8.62655 -15.86819,9.80702 -2.14212,0.52944 -5.29981,2.06784 -7.01709,3.41865 -4.40942,3.46844 -18.73147,2.34541 -21.96779,-1.72255 -2.21213,-2.78057 -2.21493,-2.78064 -7.16608,-0.17356 -2.72419,1.43447 -6.45808,4.85811 -8.29752,7.60811 -1.83944,2.75 -3.86471,5 -4.5006,5 -2.47082,0 -0.88,-6.2532 2.88323,-11.33333 6.73002,-9.08514 9.98078,-18 6.56362,-18 -1.71637,0 -6.85896,5.43806 -12.34625,13.05564 -4.82841,6.70289 -10.2574,10.34968 -17.37176,11.66904 -4.8365,0.89693 -5.09058,0.77598 -4.66666,-2.22139 0.2466,-1.74348 1.79834,-3.76224 3.44834,-4.48613 1.94075,-0.85146 3.01668,-2.49918 3.04726,-4.66667 0.026,-1.84277 0.90472,-4.85049 1.95274,-6.68383 1.04803,-1.83333 1.92678,-4.08333 1.95275,-5 0.0649,-2.29123 -3.26837,-2.09786 -5.26283,0.30532 -1.2717,1.53231 -2.24729,1.64515 -4.37562,0.5061 -1.54218,-0.82535 -5.48196,-1.14103 -9.01628,-0.72244 -7.1702,0.84921 -10.814,-0.99623 -13.95318,-7.06673 -1.0853,-2.09874 -4.38188,-6.5988 -7.32572,-10.00015 -2.94436,-3.40136 -5.35296,-7.40644 -5.35296,-8.90019 0,-1.49374 2.50535,-7.7719 5.56744,-13.95146 4.22058,-8.51747 5.19363,-11.60938 4.02223,-12.78078 -0.84988,-0.84988 -1.74717,-1.28522 -1.99401,-0.96744 -6.14226,7.90755 -15.25902,23.23878 -23.92075,40.22636 -8.8907,17.43667 -11.89852,22.1292 -16.1657,25.22033 -6.68191,4.84035 -12.84254,5.1591 -12.84254,0.66447 0,-2.9786 -6.21858,-12.94171 -9.24526,-14.81229 -2.72283,-1.6828 -1.37758,-8.03345 5.36377,-25.32108 10.61128,-27.2118 33.37821,-81.09316 47.96121,-113.50744 5.60068,-12.44888 7.98925,-19.69026 6.86551,-20.81401 -2.07295,-2.07294 -8.06167,1.30032 -10.41092,5.86416 -1.24306,2.41484 -5.0631,8.59061 -8.489,13.72395 -3.4259,5.13333 -9.69109,15.93333 -13.92265,24 -4.23158,8.06666 -9.0207,16.46666 -10.64251,18.66666 -1.6218,2.2 -5.00004,8.8 -7.5072,14.66667 -2.50715,5.86667 -6.93475,14.86666 -9.83909,20 -2.90436,5.13333 -6.87392,12.93333 -8.82124,17.33333 -1.94732,4.4 -6.26535,13.7 -9.5956,20.66667 -3.33026,6.96666 -9.22624,19.77221 -13.10218,28.45677 -7.75837,17.38368 -15.06497,28.50986 -19.48925,29.6774 -5.73212,1.51266 -15.12558,-8.39415 -15.12558,-15.9522 0,-3.36455 10.54104,-34.65245 18.70337,-55.51531 2.1518,-5.5 7.13725,-19 11.07877,-30 6.35083,-17.72393 17.69943,-47.28327 20.98795,-54.66666 7.71549,-17.32284 25.2299,-60.06272 25.2299,-61.56774 0,-6.29778 -10.25589,4.3232 -18.89514,19.56774 -2.28574,4.03334 -6.19019,10.93334 -8.67658,15.33333 -2.48637,4.4 -6.92017,12.2 -9.85289,17.33334 -7.63499,13.36406 -31.9433,62.95463 -38.56084,78.66666 -3.08862,7.33333 -6.43573,15.13333 -7.43802,17.33333 -3.06978,6.73808 -9.90044,23.94282 -9.90528,24.94894 -0.003,0.52192 -3.85646,10.12192 -8.5643,21.33333 -4.70785,11.21142 -12.53337,30.5844 -17.39004,43.05106 -9.95247,25.54715 -18.07398,39.33333 -23.17147,39.33333 -8.60503,0 -20.22398,-10.1903 -20.19635,-17.71306 0.0293,-7.99276 11.90093,-50.0466 16.75384,-59.34875 1.03436,-1.98266 1.88435,-4.64792 1.88887,-5.92278 0.0333,-9.39496 39.7863,-115.40656 63.62865,-169.68206 20.98357,-47.76772 22.31416,-51.33333 19.15622,-51.33333 -3.40946,0 -37.11002,58.04048 -41.4189,71.33333 -0.95084,2.93333 -4.38771,10.65573 -7.63747,17.16089 -3.24976,6.50515 -8.62623,18.20515 -11.94769,26 -5.89833,13.84225 -8.21263,19.11253 -14.47476,32.96314 -1.68863,3.73488 -3.97508,9.83768 -5.08101,13.56178 -1.10594,3.72408 -3.85715,10.76013 -6.11382,15.63565 -2.25665,4.87552 -4.10301,9.18204 -4.10301,9.57005 0,0.38802 -0.96117,2.89615 -2.13595,5.57364 -1.17477,2.6775 -2.64892,6.06818 -3.27588,7.53484 -13.84848,32.39608 -22.26306,47.11556 -31.92347,55.84316 -8.10036,7.31819 -11.33474,6.72243 -22.67436,-4.17649 l -9.363897,-9 1.55327,-4.66667 c 0.85429,-2.56667 3.91754,-10.66667 6.807207,-18 2.88966,-7.33333 8.44829,-21.43333 12.35251,-31.33333 3.90421,-9.9 10.21816,-26.4 14.031,-36.66667 3.81283,-10.26666 9.33064,-23.76666 12.26177,-29.99999 2.93113,-6.23334 7.30041,-16.13334 9.70949,-22 2.40908,-5.86667 8.56852,-19.96667 13.68766,-31.33334 5.11913,-11.36666 13.31553,-29.66666 18.21422,-40.66666 4.89871,-11 18.75344,-39.32663 30.78831,-62.94805 12.03486,-23.62143 21.31641,-43.29734 20.62566,-43.72425 -0.69074,-0.4269 -4.12126,3.18763 -7.62338,8.0323 -6.8623,9.49298 -26.17026,43.67166 -28.98376,51.30667 -0.94583,2.56667 -2.93996,6.76666 -4.43143,9.33333 -1.49145,2.56667 -3.62197,7.36667 -4.73446,10.66667 -1.11251,3.3 -6.33103,14.99116 -11.59672,25.98036 -5.2657,10.9892 -10.64396,22.6892 -11.95171,26 -1.30773,3.3108 -3.86681,9.31963 -5.68685,13.35297 -3.57047,7.91244 -13.99788,32.92126 -17.78984,42.66666 -1.28404,3.3 -3.08895,7.2 -4.01091,8.66667 -0.92196,1.46667 -3.27462,7.44999 -5.22815,13.29628 -1.95353,5.84628 -4.65111,13.04628 -5.99462,16 -1.34351,2.9537 -3.42425,8.37038 -4.62386,12.03705 -2.13899,6.53789 -12.65726,32.16631 -18.60547,45.33333 -1.65642,3.66667 -5.825467,13.26667 -9.264557,21.33333 -3.43909,8.06667 -10.0392,22.16667 -14.666898,31.33334 -23.943206,47.42729 -25.20749,49.25058 -34.131583,49.22301 -2.566666,-0.008 -7.551041,-1.14142 -11.076387,-2.51886 z M 473.02321,416.00707 c 0.21294,-1.10576 -0.4935,-3.19887 -1.56987,-4.65135 -1.81184,-2.44493 -2.12115,-2.47929 -4.16869,-0.46309 -1.79802,1.77047 -1.92111,2.72067 -0.6582,5.08044 1.70989,3.19494 5.78385,3.21661 6.39676,0.034 z m 33.3171,-92.62556 c -0.48904,-2.55826 -0.0784,-3.33333 1.76587,-3.33333 3.31661,0 3.92305,-1.45329 2.99438,-7.17593 -0.80165,-4.94004 -5.00424,-8.84508 -7.11822,-6.61426 -0.58558,0.61794 -0.63922,3.52352 -0.1192,6.45686 0.52001,2.93333 0.36884,6.30385 -0.33594,7.49004 -1.48929,2.50661 -0.30874,6.50996 1.91971,6.50996 0.91369,0 1.27379,-1.34352 0.89341,-3.33334 z M 212.06763,229.81728 c 1.79613,-3.427 4.87767,-9.277 6.84785,-13 3.8189,-7.21644 4.52899,-10.10243 2.4857,-10.10243 -2.10734,0 -7.46894,8.20283 -10.69079,16.35605 -1.6712,4.22916 -3.56472,8.01458 -4.20781,8.41202 -1.80754,1.11712 -1.38074,4.56526 0.56505,4.56526 0.95388,0 3.20388,-2.8039 5,-6.2309 z"
	/>
</clipPath>
<path
	 clip-path="url(#scribble-clip-path)"
	 fill="none" stroke-miterlimit="0" stroke-width="70"
   class="scribble-path"
   d="M 207.55019,87.389555 C 76.569696,311.99391 57.909342,399.75673 38.554216,493.49396 122.0427,330.8991 181.21334,138.53703 294.29718,30.200802 229.2164,163.7014 169.67116,281.85814 115.02007,442.73091 174.01295,312.46209 233.33432,199.24878 308.43372,114.37751 281.67061,154.27485 201.50136,359.17532 169.63854,487.71083 234.96652,374.61846 264.42725,235.62198 365.62247,148.43373 l -114.3775,286.58633 c 47.33601,-82.46318 79.17712,-192.04244 142.00803,-247.38955 4.53817,74.75234 -48.6109,151.43239 -71.96787,226.18473 37.9056,-68.3347 65.46371,-150.46604 113.73493,-204.97991 -13.56619,75.03628 -37.51108,129.31518 -57.18875,192.12851 l 93.81526,-152.28915 -53.97591,170.28112 73.25302,-104.09638 c 4.77407,41.49757 -20.97985,75.72064 -35.98394,110.52208"
 />
</svg>
`;


var jstpl_scribbleCircle = `
<svg xmlns="http://www.w3.org/2000/svg" class="scribble-circle" data-turn="\${turn}" id="scribble-\${id}" viewBox="0 0 522.23163 525.4444">
	<clipPath id="scribble-circle-clip-path">
		<path
		  d="m 240.18226,502.50155 c -4.96073,-1.16045 -12.94131,-1.49328 -24.66667,-1.02868 -17.09236,0.67724 -17.52796,0.62201 -31.33333,-3.97272 -18.94132,-6.30409 -30.9209,-10.96459 -35.78061,-13.91994 l -4.04863,-2.46212 10.91462,0.2632 c 6.00305,0.14474 16.74346,1.53069 23.86759,3.07986 24.00096,5.21911 55.57706,6.01196 81.04703,2.03503 15.39446,-2.40372 34.33237,-6.21844 36.33504,-7.31908 1.28426,-0.70581 8.16162,-3.46599 15.28301,-6.13372 7.12139,-2.66773 19.36713,-8.06387 27.21278,-11.9914 7.92563,-3.96757 15.17763,-6.79069 16.3189,-6.35275 1.32585,0.50879 4.1263,-1.34392 7.89904,-5.22577 3.21473,-3.30771 10.89386,-9.78965 17.06476,-14.40431 13.95022,-10.43214 39.28809,-35.65887 50.03673,-49.81729 23.76514,-31.3041 39.87724,-68.10701 46.56388,-106.36023 2.85797,-16.35003 2.10574,-55.97984 -1.35983,-71.63976 -7.96149,-35.97562 -23.54869,-65.89074 -47.54191,-91.24289 -31.06201,-32.82131 -64.43491,-50.51212 -115.14574,-61.03819 -12.88349,-2.67423 -18.47617,-3.04114 -46,-3.01782 -27.30143,0.0231 -33.22059,0.41571 -45.99999,3.05085 -26.55424,5.47553 -48.53032,13.59117 -69.71691,25.74608 -19.03844,10.92249 -28.35345,18.32745 -48.28309,38.38261 -40.418191,40.67274 -64.215121,80.91197 -72.613954,122.78603 -8.975699,44.7501 -9.965467,47.99999 -14.618626,47.99999 -6.9943838,0 -13.2047429,-20.7166 -12.4264269,-41.45223 0.91048,-24.25671 8.0747099,-50.50772 22.7627629,-83.40683 5.906231,-13.2291 8.601794,-17.58708 14.729403,-23.81337 4.1251,-4.19155 7.50018,-8.10007 7.50018,-8.68561 0,-1.17848 15.20436,-19.56925 34.66666,-41.93183 31.257191,-35.91513 45.071841,-47.55342 71.333331,-60.09545 20.56706,-9.82247 34.36668,-13.92125 66,-19.603389 10.82627,-1.9446703 71.33892,-2.8218203 79.33333,-1.1499703 3.66667,0.7668103 11.79743,2.2702603 18.06836,3.3410103 12.88439,2.199989 49.03472,14.633839 63.01318,21.673279 41.28457,20.79057 75.73387,55.60988 97.41147,98.45773 12.04173,23.80166 18.48454,45.58482 24.84469,84 2.07348,12.5238 1.07805,48.56978 -1.80284,65.28374 -9.64868,55.97831 -34.32604,106.47872 -68.76867,140.73006 -16.2749,16.18452 -37.44582,31.51366 -73.7275,53.38356 -15.68803,9.45644 -17.53975,10.23509 -24.66667,10.37235 -10.40301,0.20033 -24.77257,3.40369 -29.31978,6.53616 -6.33915,4.36688 -11.22764,5.59132 -25.71891,6.44192 -8.44006,0.4954 -15.17278,1.56912 -16.95309,2.70364 -3.5092,2.23628 -11.61334,2.16098 -21.71357,-0.20175 z m -75.3275,-17.92577 c 0.45641,-0.73852 -0.13406,-1.71264 -1.31216,-2.16472 -2.55286,-0.97963 -3.97562,0.0999 -2.7485,2.08543 1.10718,1.79144 2.97988,1.82801 4.06066,0.0793 z m -29.33916,2.88393 C 115.748,477.9409 85.515599,458.27555 85.515599,454.93609 c 0,-2.62178 4.15211,-0.22179 13.33333,7.7069 10.683491,9.22602 21.153211,15.27554 26.436891,15.27554 3.58207,0 26.89644,12.80022 26.89644,14.76686 0,2.25825 -3.22433,1.24729 -16.66666,-5.22568 z m 3,-11.79362 c -1.28334,-0.33536 -2.33334,-1.23082 -2.33334,-1.98987 0,-1.57005 6.59728,-0.28896 8.6,1.66999 1.3189,1.29008 -1.92122,1.45546 -6.26666,0.31988 z M 60.342179,428.58467 c -2.35707,-2.93304 -3.72851,-5.33281 -3.04766,-5.33281 1.48124,0 8.74193,9.25693 7.9118,10.08705 -0.31822,0.31823 -2.50708,-1.82118 -4.86414,-4.75424 z M 19.059462,345.91853 c 0,-1.83333 0.302631,-2.58333 0.672515,-1.66667 0.369882,0.91667 0.369882,2.41667 0,3.33334 -0.369884,0.91666 -0.672515,0.16666 -0.672515,-1.66667 z m -4.623018,-14.24696 c -3.027658,-9.63396 -3.854488,-14.07542 -2.459847,-13.21348 1.540612,0.95215 6.213086,17.89747 5.21126,18.89929 -0.403643,0.40364 -1.64178,-2.15497 -2.751413,-5.68581 z M 9.8249402,308.5852 c 0,-2.56667 0.2743928,-3.61667 0.6097638,-2.33333 0.335369,1.28333 0.335369,3.38333 0,4.66666 -0.335371,1.28334 -0.6097638,0.23334 -0.6097638,-2.33333 z"
		 />
	</clipPath>
  <path
		 clip-path="url(#scribble-circle-clip-path)"
		 fill="none" stroke-miterlimit="0" stroke-width="70"
		 class="scribble-path"
     d="M 26.429579,293.67823 A 234.53815,232.61044 0 0 1 228.07832,32.689965 234.53815,232.61044 0 0 1 491.4228,232.43086 234.53815,232.61044 0 0 1 290.27933,493.80237 234.53815,232.61044 0 0 1 26.548924,294.56297 L 258.95581,263.27576 Z"
  />
</svg>
`;


var jstpl_scribbleLine = `
<svg xmlns="http://www.w3.org/2000/svg" class="scribble-line" id="scribble-\${id}" data-turn="\${turn}" viewBox="0 0 17.874146 238.29044">
	<clipPath id="scribble-line-clip-path">
    <path
     d="M 4.6524392,2.2505752 C 5.9885742,0.36061298 12.89342,-0.73569533 14.693417,0.57012866 c 2.51067,1.82138154 4.12406,10.53973334 2.56988,13.88696434 -4.910112,10.574888 -7.4489658,63.25442 -4.960648,102.930067 1.17946,18.80621 1.424158,35.32691 0.977971,66.027 -0.663698,45.66586 -1.416339,52.6515 -5.8777408,54.55447 -3.026311,1.29082 -7.928712,-1.54088 -7.347445,-4.244 1.753674,-8.15533 1.817118,-64.84854 0.102779,-91.84677 -0.766625,-12.0732 1.336684,-135.1609412 4.494226,-139.6272848 z"
     />
  </clipPath>
  <path
		 clip-path="url(#scribble-line-clip-path)"
     class="scribble-path"
		 fill="none" stroke-miterlimit="0" stroke-width="30"
     d="M 11.407509,0.58584784 C -3.6095602,79.522236 12.506111,162.69193 5.411485,238.21108"
	/>
</svg>
`;
var jstpl_scribbleLineHor = `
<svg xmlns="http://www.w3.org/2000/svg" class="scribble-line-hor" id="scribble-\${id}" data-turn="\${turn}"    viewBox="0 0 181.54053 16.163235">
	<clipPath id="scribble-line-hor-clip-path">
    <path
    d="M 1.0350344,13.933326 C -0.41474042,12.018066 -0.18785306,5.2625575 0.77312792,2.5701545 2.1135185,-1.1852626 7.9386045,1.4892012 10.561954,1.3915884 c 8.96413,-0.3335481 44.091008,2.8138849 74.340816,0.8835658 14.258666,-0.9098825 27.4567,-0.4206211 50.68871,-0.6571415 34.55724,-0.3518454 43.59139,-4.1121759 45.64059,1.2050805 0.20746,4.9076403 2.07544,12.1970858 -2.22963,11.6616108 -6.39465,-0.795382 -32.06728,-1.972175 -53.51382,-0.363446 C 116.33086,14.808194 4.4611209,18.459455 1.0350344,13.933326 Z"
     />
  </clipPath>
  <path
		 clip-path="url(#scribble-line-hor-clip-path)"
     class="scribble-path"
		 fill="none" stroke-miterlimit="0" stroke-width="30"
     d="M 0.6984223,7.1739953 C 60.640151,21.094503 123.45482,0.22400919 180.6929,6.4385659"
 	/>
</svg>
`;


</script>

{OVERALL_GAME_FOOTER}
