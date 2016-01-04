// Release 1: Tests to User Stories
//
// As a user, I want to calculate the sum of an array.
//
// As a user, I want to calculate the mean of an array.
//
// As a user, I want to calculate the median of an odd length array.
// As a user, I want to calculate the median of an even length array.
//
//Release 2: User Stories to Pseudocode

// pseudocode:
// Accept an array of numbers from the user.
// Create a new variable to hold the sum of the array.  Set it to = 0
// Iterate through the user's array. You can do this with a FOR loop.
// The FOR loop should have a counter starting at 0. It should loop for the length of the users array. It should add 1 to the coutner for each loop.
// The code block in the loop should add each number to the new variable you've created. Use the counter as the index number in the user's array.
// When the loop is finished, the new variable that you created will equal the sum of the user's array.

// pseudocode:
// Accept an array of numbers from the user.
// Create a new variable to hold the sum of the array.  Set it to = 0
// Iterate through the user's array. You can do this with a FOR loop.
// The FOR loop should have a counter starting at 0. It should loop for the length of the users array. It should add 1 to the coutner for each loop.
// The code block in the loop should add each number to the new variable you've created. Use the counter as the index number in the user's array.
// When the loop is finished, the new variable that you created will equal the sum of the user's array.
// Divide the new variable contaiing the sum by the length of the user's array.  This will give the mean of the array.

// pseudocode:
// Accept an array containing an odd number of numbers from the user.
// Order the array by the size of the elements. (Reminder: you will neet to use the compareFunction to sort numbers by size)
// Create a new variable to hold the value of the median.
// Set the new variable to the ordered array with an index of the array.length minus 1 and divided by 2.
// The new variable is now equal to the median of the array.

// pseudocode:
// Accept an array with an even number of numbers from the user.
// Order the array by the size of the elements. (Reminder: you will neet to use the compareFunction to sort numbers by size)
// Create two new variables.  One will be for the lower of the two middle numbers and one will be for the higher of the two middle numbers.
// Set the lower variable to the ordered array with an index of the array.length divided by 2.
// Set the higher variable to the ordered array with the result of index of the array.length divided by 2 and then plus 1.
// Create a new variable called median.  Set it equal to the sum of the lower variable and higher variable divded by 2.  Be careful with your order of opperations.  You will need brackets around the addition so that it happens before the division.
// The variable median will now equal the median of the array.

// Release 3: Pseudocode to Code
//
// var array = []
// var operation = {
//   function sum(array){
//     var sum = 0;
//     for(var i = 0; i < array.length; i++){
//       sum = sum + array[i];
//     }
//     return sum;
//   }
//   function mean(array){
//
//     return (sum(array)/(array.length));
//   };
//
//   function median(array){
//   array = array.sort();
//
//   if (array.length % 2 === 0)
//   {
//     var upperBound = array[array.length / 2];
//     var lowerBound = array[(array.length / 2) - 1];
//
//     return (upperBound + lowerBound) / 2;
//   }
//   else
//   {
//       return array[Math.floor(array.length / 2)];
//   }
//  }
// };

// Release 4: Refactor and Translate to User Stories

  function sum(array){
    var sum = 0;
    for(var i = 0; i < array.length; i++){
      sum = sum + array[i];
    }
    return sum;
  }
  function mean(array){

    return (sum(array)/(array.length));
  };

  function median(array){
  array = array.sort();

  if (array.length % 2 === 0)
  {
    var upperBound = array[array.length / 2];
    var lowerBound = array[(array.length / 2) - 1];

    return (upperBound + lowerBound) / 2;
  }
  else
  {
      return array[Math.floor(array.length / 2)];
  }
 }
<<<<<<< HEAD

// Release 4 User stories:
// As a user, I want to calculate the sum of an array.
//
// As a user, I want to calculate the mean of an array.
//
// As a user, I want to calculate the median of an odd length array.
// As a user, I want to calculate the median of an even length array.


// // Release 5: Put it all together
// Initially, the tests didn't pass and kept saying "yntaxError: Unexpected
// // identifier". However, the only refactoring that was required was to remove
// a superflous "array" and "operation" variables from the top and it worked.
=======
};
>>>>>>> 6a9575e87fdd48420b3352e0b4f99f52cd4aaaf2
