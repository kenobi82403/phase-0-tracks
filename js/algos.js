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

// Release 2: Generate Random Test Data
// Coming up with examples to test our code with can be tiresome. Let's make a function do all the work instead.

// DO THE THING
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// function random test data, takes an integer as a parameter
// variable for result, letters
// variable length set to an integer that is RANDOM from 1 to 10
// Loop and set it to the length variable
//  - grab a random letter and concat to result
// returns an array of strings

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

// test random test data
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.