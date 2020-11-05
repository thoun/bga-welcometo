var isDebug = window.location.host == 'studio.boardgamearena.com' || window.location.hash.indexOf('debug') > -1;
var debug = isDebug ? console.info.bind(window.console) : function () { };

define(["dojo", "dojo/_base/declare","ebg/core/gamegui",], function (dojo, declare) {
  return declare("bgagame.wtoConstructionCards", ebg.core.gamegui, {
/****************************************
******* Constructions cards class *******
*****************************************
 * create the layout for the cards
 * handle the clicks event to ask user to select card
 * animate cards at the beggining of a new turn
 */

    constructor(gamedatas) {
      debug("Seting up the cards", gamedatas.options.standard? "Standard mode" : "Only one card by stack");
      this._isStandard = gamedatas.options.standard; // Standard = playing with three stack

      // Adjust stack size for flip animation
      if(this._isStandard)
        dojo.addClass("construction-cards-container", "standard");

      // Display the cards
      // TODO : handle the z-indexes
      gamedatas.constructionCards.forEach((stack, i) => {
        stack.forEach((card,j) => {
          dojo.place(this.format_block('jstpl_constructionCard', card), 'construction-cards-stack-' + i);
          if(j == 1 && this._isStandard){ // Flip second card
            dojo.addClass("construction-card-" + card.id, "flipped");
          }
        });

        dojo.connect($('construction-cards-stack-' + i), 'click', () => this.onClickStack(i));
      });
    },


    // Clear everything
    clearPossible(){
      dojo.query(".construction-cards-stack").removeClass("unselectable selectable");
    },

    // Hightlight selected stack(s)
    highlight(stack){
      dojo.query(".construction-cards-stack").addClass("unselectable");
      if(this._isStandard){
        dojo.addClass('construction-cards-stack-' + stack, 'selected');
      } else {
        dojo.addClass('construction-cards-stack-' + stack[0], 'selected');
        dojo.addClass('construction-cards-stack-' + stack[1], 'selected flipped');
      }
    },

    ////////////////////////////////////
    ////////  Selecting a stack ////////
    ////////////////////////////////////
    promptPlayer(possibleChoices, callback){
      this._callback = callback;
      this._possibleChoices = possibleChoices;
      this.initSelectableStacks();
    },

    initSelectableStacks(){
      this._selectedStackForNonStandard = null;
      let stacks = this._possibleChoices.map(choice => this._isStandard? choice : choice[0]);
      this.makeStacksSelectable(stacks);
    },


    makeStacksSelectable(stacks){
      dojo.query(".construction-cards-stack").removeClass("selected"); // TODO : add in the clearPossible function instead ?
      dojo.query(".construction-cards-stack").addClass("unselectable");
      this._selectableStacks = stacks;
      stacks.forEach(stackId =>  dojo.query("#construction-cards-stack-" + stackId).removeClass("unselectable").addClass("selectable") );
    },

    onClickStack(stackId){
      debug("Clicked on a stack", stackId);
      // Check if selectable
      if(!this._selectableStacks.includes(stackId))
        return;

      // Standard mode => return stack id
      if(this._isStandard)
        this._callback(stackId)
      else
        this.onClickStackNonStandard(stackId);
    },



    ////////////////////////////////////////////////////////
    ////////  Non-standard mode : select two stacks ////////
    ////////////////////////////////////////////////////////

    /*
     * Expert/solo mode => need two stacks
     */
    onClickStackNonStandard(stackId){
      // First stack => ask for a second one
      if(this._selectedStackForNonStandard == null){
        this._selectedStackForNonStandard = stackId;
        // Compute new possible choices for stacks
        this.makeStacksSelectable(this.getSelectableSecondStacks(stackId));
        this.addActionButton('buttonUnselect', _('Unselect'), () => this.unselectFirstStack(), null, false, 'gray');
        dojo.addClass("construction-cards-stack-" + stackId, "selected");
      }

      // Second stack => return both stacks
      else {
        this._callback([this._selectedStackForNonStandard, stackId]);
      }
    },

    // Get the available choices for second stack depending on the first stack selected
    getSelectableSecondStacks(stackId){
      return this._possibleChoices.reduce( (stacks, choice) => {
        if(choice[0] == stackId)
          stacks.push(choice[1]);
        return stacks;
      }, []);
    },

    // Unselect first stack
    unselectFirstStack(){
      dojo.destroy("buttonUnselect");
      dojo.removeClass("construction-cards-stack-" + this._selectedStackForNonStandard, "selected");
      this.initSelectableStacks();
    },
  });
});
