
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!


// Program Structure
// Write your own variable and do something to it.
var eleven = 11
if(eleven % 10 == 1){
  console.log("We have remaining of 1");
}
else {
  console.log("Not a valid result");
}
//Write a short program that asks for a user to input their favorite food.

var userInput = prompt("What's your favorite food");
if (isNaN(userInput))
  alert("Hey! That's my favorite too!");
 else
  alert("I don't think i like that!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle

var triangle = "#"
for (var n = 0; n<=7; n++ ) {
  console.log(triangle);
triangle = triangle.concat("#");
}

// FizzBuzz

for (var n = 1; n <= 100; n++) {
  if (n%3 === 0 && n%5 ==0) {
    console.log("FizzBuzz");
  }
  else if (n%3 === 0) {
    console.log("Fizz");
  }
  else if (n%5 === 0) {
    console.log("Buzz");
  }
  else {
    console.log(n);
  }
}
// Codecademy :))!


// Functions
// Complete the `minimum` exercise.

var min =function(a, b) {
if (a > b) {
  return b;
 }
  else {
   return a;
  }
}
console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = ["Jovanka","28","Salad","Tacos","Seafood","Spacing-out easily"]