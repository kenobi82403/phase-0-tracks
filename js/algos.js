// Release 0 : Find the Longest Phrase

// Algorithm

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

// DRIVER CODE
var testArray = ["Driver", "Duck", "Pirate's Booty", "Aged White Cheddar", "Glutten", "Free", "Trick"];

console.log(longestWord(testArray));

