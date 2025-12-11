define(["dojo", "dojo/_base/declare"], (dojo, declare) => {
  return declare("welcometo.test", null, {
    constructor(){
      debug("tester")
    },

    test(){
      debug("Hello from over there");
    },
  });
});
