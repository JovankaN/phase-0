
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:A rock , paper , scissors game  where we ask a player what is his choise and if the computer picks the same than it is a tie and ask the player to make a second choice
// Goals:to keep playing
// Characters:Player and computer
// Objects: computer and a player
// Functions:compare the answers see who wins and another function if the result is a tie.

// Pseudocode
//Promth the user to input rock/paper,scissors
//Make it a random computer choise
// if the comp chooses from 0 to 0.33 make it "rock",0.33 to 0.66 is paper, anything after is scissors .
//Compare the players input with the computer's one and see who wins
//add another function if the result is tie to make another choice
/

// Initial Code



var userChoice = prompt("Do you choose rock, paper or scissors?");
var computerChoice = Math.random();
if (computerChoice < 0.34) {
  computerChoice = "rock";
} else if(computerChoice <= 0.67) {
  computerChoice = "paper";
} else {
  computerChoice = "scissors";
} console.log("Computer: " + computerChoice);

var compare = function(choice1, choice2) {
   if ( choice1 === choice2){
      return "The result is a tie!";
}
 else if (choice1 === "rock") {
     if (choice2 === "scissors"){
     return "rock wins";
     }
     else {
         return "paper wins";
     }
}
  else if (choice1 === "paper"){
      if (choice2 === "rock") {
          return "paper wins";
      }
      else {
          return "scissors wins";
      }
  }
  else {
   return alert ("Inavalid choice, try again!");
  }
  if (tie ===1){
    alert( "It's a tie!");
  }
};
 var tie = function(userChoice, computerChoice){
     if (userChoice ===computerChoice) {
        alert("It is a tie, try again!");
     }
     else {
     return "Ups!"
     }
 }

compare(userChoice, computerChoice)
tie(userChoice, computerChoice)









// Reflection

//What was the most difficult part of this challenge?
//Omg i will switch this game, i had a bit different idea but went way deep down the rabbit hole soo i had to use the one i did in codecademy but i added more functions to it ...updates comming soon
// What did you learn about creating objects and functions that interact with one another?
//Mostly got a bit familiar with passiong functions as properties in other objects/properties.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//I didn't immplement much right now but i will be:)
// How can you access and manipulate properties of objects?
//You can access them with the dot notation (myObject.property )You can manipulate a property by changing the object that it's pointing to after you access it.