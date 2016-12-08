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
// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!
// function takes two objects as parameter
// retrieve all keys from one object and turn it into an array
// loop through the array
//  - set up a condition to test if second object has at least one of the keys 
//  - AND if second object share the same values
//  - if both are true then short circuit and return true without going through the whole array
// returns a boolean if there is at least one match

// DRIVER CODE

// test longest word algo
var testArray = ["Driver", "Duck", "Pirate's Booty", "Aged White Cheddar", "Glutten", "Free", "Trick"];

console.log(longestWord(testArray));


// test key-value match algo