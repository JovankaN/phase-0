// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Sabri Helal
// This challenge took me [2:30] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// // Pseudocode
// Iterate through votes objects,
// Counting for each property within the object,
// FOR each property within the object we record each student's vote and
// add that to the variable voteCount
//Once tallied, we assign the winners per property to the officers variable

// __________________________________________
// Initial Solution
// var tallyCount = function(votes){
// for ( var name in votes){
//   var voters = votes[name];
// for ( var position in voters){
//   var vote = voters[position];



//  if(position === "president"){
//             if(voteCount.president.hasOwnProperty(vote)){
//               voteCount.president[vote] = voteCount.president[vote] + 1;}
//             else {voteCount.president[vote] = 1; }
//           } //if position == president end bracket

//           if(position === "vicePresident"){
//             if(voteCount.vicePresident.hasOwnProperty(vote)){
//               voteCount.vicePresident[vote] = voteCount.vicePresident[vote] + 1;}
//             else {voteCount.vicePresident[vote] = 1;  }
//           }

//           if(position === "secretary"){
//             if(voteCount.secretary.hasOwnProperty(vote)){
//               voteCount.secretary[vote] = voteCount.secretary[vote] + 1;}
//             else {voteCount.secretary[vote] = 1; }
//           }

//           if(position === "treasurer"){
//             if(voteCount.treasurer.hasOwnProperty(vote)){
//               voteCount.treasurer[vote] = voteCount.treasurer[vote] + 1;}
//             else {voteCount.treasurer[vote] = 1; }
//           }

//        }
//     }

//     return voteCount;
// };

// tallyCount(votes);


// var winner = function(){
//   for (var office in voteCount){
//     var tally = voteCount[office]
//     var count = 0
//     var win;

//   for ( var key in tally){
//     if((tally[key]) > count){
//       count = tally[key];
//       win = key;
//     }
//   }
//   officers[office] = win;
//   }
// };
// winner();

//  __________________________________________
// Refactored Solution


var positions = ["president", "vicePresident", "secretary", "treasurer"];
var tallyCounts = function() {
for (var name in votes) {
for (var i=0; i<positions.length; i++) {
var position = positions[i];
if ((voteCount[position]).hasOwnProperty(votes[name][position])) {
        voteCount[position][votes[name][position]]++;
      }
else {
        voteCount[position][votes[name][position]] = 1;
      }
    }
  }
};
tallyCounts();

var winner = function(){
  for (var office in voteCount){
    var tally = voteCount[office]
    var count = 0
    var win;

  for ( var key in tally){
    if((tally[key]) > count){
      count = tally[key];
      win = key;
    }
  }
  officers[office] = win;
  }
};
winner();

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// for ..in function it is pretty helpful when iterating over nested objects.
// Were you able to find useful methods to help you with this?
// We did this with for loops and if statement.
// What concepts were solidified in the process of working through this challenge?
// This challenge was exausting and very confusing , still many things are not very clear ...i underestimated JS for sure .



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
