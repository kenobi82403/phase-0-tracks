// Release 0 : Find the Longest Phrase
// Function takes in Array of words/phrase
//  - a variable to keep track of the longest word
//  - a variable keep track of the length of the longest word
//  - iterate the whole Array using a for loop
//  - condition to see if the current word length of the index is larger than maxIndex
//  - if so, then save the length of the word and the resulting word in their respective variable
// Returns a string by referencing the array with the maxIndex variable
function longestWord(words_array){
  var result = "";
  var maxLength = 0;
  for(var i = 0; i < words_array.length; i++){
    if (words_array[i].length > maxLength){
      maxLength = words_array[i].length;
      result = words_array[i];
    }
  }
  return result;
}

// Release 1 : Find a Key-Value Match
// function takes two objects as parameter
// retrieve all keys from one object and turn it into an array
// loop through the array
//  - set up a condition to test if second object has at least one of the keys 
//  - AND if second object share the same values
//  - if both are true then short circuit and return true without going through the whole array
// returns a boolean if there is at least one match
function keyValueMatch(obj1, obj2){
  var objOneKeys = Object.keys(obj1);

  for(var i = 0; i < objOneKeys.length; i++){
    var key = objOneKeys[i];
    if(obj2.hasOwnProperty(key) && obj1[key] === obj2[key]){
      return true;
    }
  }
  return false;
}

// DRIVER CODE

// test longest word algo
var testArray = ["Driver", "Duck", "Pirate's Booty", "Aged White Cheddar", "Glutten", "Free", "Trick"];

console.log(longestWord(testArray) == "Aged White Cheddar");


// test key-value match algo
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
var obj3 = {name: "bobbie", age: 28};
var obj4 = {color: "blue", dog: "bobbie", name: "bobbe", age: 28};

console.log(keyValueMatch(obj1, obj2) == true);
console.log(keyValueMatch(obj1, obj3) == false);
console.log(keyValueMatch(obj3, obj4) == true);