// output/Data.Unit/foreign.js
var unit = void 0;

// output/Effect.Console/foreign.js
var log = function(s) {
  return function() {
    console.log(s);
  };
};

// output/WebDirt/foreign.js
var newWebDirt = (args) => () => new WebDirt.WebDirt(args);
var initializeWebAudio = (wd) => () => wd.initializeWebAudio();

// output/Main/index.js
var main = function __do() {
  log("\u{1F35D}")();
  var wd = newWebDirt({
    sampleMapUrl: "sampleMap.json"
  })();
  initializeWebAudio(wd)();
  return unit;
};
export {
  main
};
