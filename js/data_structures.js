// In your new file, declare two separate arrays:
  // an array of four colors ("blue", for instance, though you're welcome to get crazy with something like "iridescent blue/green with silver sparkles")
  // an array of four names that you might give a horse ("Ed" is always a solid choice to start with)
var color = ["blue", "green", "red", "mint"];
var name = ["Ed", "Corey", "Neil", "Jerome"];

// Write additional code that adds another color to the colors array, and another horse name to the horses array.

console.log (color);
console.log (name);
color.push("purple");
name.push("Ronald");
console.log (color);
console.log (name);


// We need to assign colors to horses. In data_structures.js, add code that will use your two arrays to create an object.
// The keys of your object should be horse names, and the values should be colors.
// Your solution should be something that would work for any number of colors/horses, as long as the two arrays are the same length. This is a logical reasoning step -- try to think it through instead of Googling it.

 //SOLUTION AND REASONS
// var horses = {};

// for (var i=0; i < color.length; i++) //var i=0 creating a variable that counts from 0 to name.length; i < color.length where to stop and i++ is to go up by 1 but can be i+=2)
 // {
 //  console.log(color[i]); //prints one item in this array each time it loops on a seperate line
  // horses[name[i]] = color[i]; //this adds the key value pairs together in the two arrays..assuming they are of the same length and it puts them in the object horses{}
// }
// console.log (horses); driver code to print out the new object horses

var horses = {};

for (var i=0; i < color.length; i++)
  {
  console.log(color[i]);
  horses[name[i]] = color[i];
  }
console.log (horses);

// Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an assembly line. At the bottom of your data_structures.js file,
    // write a constructor function for a car.

  // Give it a few different properties of various data types, including at least one function.
   //Demonstrate that your function works by creating a few cars with it.

   //this is giving the context of this function and refers to the context of the instance of Car which is a constructor function
function Car(name, color, isFast) {
  console.log("This is my car:");
  this.name = name;
  this.color = color;
  this.isFast = true;
  this.isExpensive = function() { console.log ("Yes, It's Expensive!") };
  console.log("Car Initilization Complete");
}

console.log("Build A New Dog");
var newCar = new Car("CandyApple", "red", false);
console.log(typeof newCar)
newCar.isExpensive();
console.log("*************")

// If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)

var inventory = {firstName:"Corey", age:40, lastName:"Walden"};

var text = "";
var x;
for (x in inventory) {
  //console.log(x)
  console.log(text)
    text += inventory[x];
}

console.log(text)
console.log(x)

//


for (i=0; i == 10; i++) {
  i
}

// Are there advantages to using constructor functions to create objects? Disadvantages?
