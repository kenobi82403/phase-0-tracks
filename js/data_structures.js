var fourColors = ["blue", "purple", "pink", "yellow"];

var fourNames = ["Ed", "Nanu", "Max", "Ken"];

fourColors.push("black");
fourNames.push("Ollie");

// Release 1

var horses = {};

for(var i = 0; i < fourColors.length; i++) {
  horses[fourNames[i]] = fourColors[i];
};

console.log(horses);