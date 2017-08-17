//pseudocode a function that takes a string as a parameter and reverses the string.
  //convert the string into an array
  var str = "Loop over me!";
  var res = str.split(" ");


  //use the array reverse method
  res.reverse ();

  //print to console to test if string was reversed

// Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like. Anytime you'd like to run your code, you can run node explore.js from the js folder in your terminal, similar to how you run Ruby programs.

  //declare a string
    var str = "Loop over me!";
  //convert the string into an array that seperates the actual words in the string
    var newStr = str.split(" ");
  //use the array reverse method to reverse the words in the array
    newStr.reverse ();
  //Print to console to view new array
    console.log( newStr );
  //Convert reversed array back into a string
    newStr.toString();
  //remove commas in string and assign result back to variable
    console.log( newStr );
    var updated_str = newStr.toString("");
    updated_str = updated_str.replace(/,/g, ' ');
    console.log(updated_str);


// Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable.



// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.