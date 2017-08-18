// Release 0: Find the Longest Phrase
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
  // create an array of words
  //iterate over the array to count each word in the array
  //locate the string that has the largest # of characters
  //Parse the word and print to console
  // Add driver code that tests your function on a few arrays.


  var languages = ["Ruby", "HTML", "CSS", "Javascript"];
  var longestWord, wordCount
  for (i=0; i < languages; i++) {
    if (languages[i].length > longest
  }
}




// Release 1: Find a Key-Value Match
// write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) Here are some sample objects and their expected return values:

// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
// yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true
// These both return true because at least one key-value pair matches between the two objects.
// If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent.
// Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!

//Create two empty data structure objects that take key-value pairs
var firstObject = {};
var secondObject = {};

// Create a function that will iterate through each object and compare their properties and return true or false.
// The function will need to accept new properties to test
function compareObjects(firstObject, secondObject) {
for (var key in firstObject) {
  if (firstObject[key] === secondObject[key]) {
    return true
  }
}
return false


  {
  console.log(firstObject[i]);
  firstObject[name[i]] = secondObject[i];
  }
}


for (var key in object)

// Add some driver code that tests both outcomes of your function.


// Release 2: Generate Random Test Data
// Coming up with examples to test our code with can be tiresome. Let's make a function do all the work instead.
// DO THE THING
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.


// create a randomWord function that takes integer as a parameter
function randomWord (integer)
// create var to represent alphabet
var alphabet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};

// create var that is a string ""
var string = ""
// iterate int number of times

// generate random number from 0-25
// pull letter at that index out of the alphabet
// append to string ""
// return original string ""