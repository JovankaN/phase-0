// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// input : Integer
// output : integer comma separated string
//steps: create a function that takes an Integer as a parameter, within the function make an array that will change the Integer to a string, split the string into separate strings, insert comma from every third element from the back, join the strings into one string, return the string.



// Initial Solution
function separateComma(num) {
  var arr = num.toString();
  arr = arr.split("").reverse();

//   the part before the first semicolon initializes the loop, usualy by defining a var., second: the expression checks whether the loop must continue, final : updates the state of the loop after every iteration
   for (var counter = 3; counter < arr.length ; counter+=3 ) {
    arr[counter] = arr[counter].concat(",");
   }
   arr = arr.reverse().join("");
   return arr
};

console.log(separateComma(1569743))

// Refactored Solution
 function separateComma(num) {
  var arr = num.toString().split("").reverse();


   for (var counter = 3; counter < arr.length ; counter+=3 ) {
    arr[counter] = arr[counter].concat(",");
   }

   return arr.reverse().join("");
};



// Your Own Tests (OPTIONAL)
console.log(separateComma(1569743))



//  Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//The logic was pretty similar to Ruby , but i had to strugle a bit more to translate that in Java and make it  simpler.
// What did you learn about iterating over arrays in JavaScript?
//It is kinda very similar to Ruby
// What was different about solving this problem in JavaScript?
//the methods and the way they work was a bit confusing for me.
// What built-in methods did you find to incorporate in your refactored solution?
//We used the same that we used in Ruby like .split, .reverse, .concat,etc...impresive that they  worked, we just had to go to MDN's doc to check if Java has those methods.