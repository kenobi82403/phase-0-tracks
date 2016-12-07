// Reverse Function - take's in a string
// - create an empty string var
// - iterate over new string backwards and concat each letter to the new string var
// - return the new string var
function reverse(string) {
  var result = "";
  for(var i = string.length-1; i >= 0; i--) {
    result += string[i];
  }
  return result;
}

// Driver Code

console.log(reverse("Hello")); // olleH
console.log(reverse("Kendy")); // ydenK
