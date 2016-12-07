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

var name = "Kendy";

var reversedHello = reverse("Hello"); // olleH
var reversedName = reverse(name); // ydenK

// If random number is less than 1 return my name, if not then say hello
if (Math.random()*2 < 1) {
  console.log(reverse(name));
} else {
  console.log(reverse("Hello"));
}
