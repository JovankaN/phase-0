// JavaScript Olympics

// I paired [ with:Todd Seller] on this challenge.

// This challenge took me [1] hours.

// Bulk Up
var athletes = [
  {name: "Sarah Hughes", event: "Ladies' Singles"},
  {name: "Michael Phelps", event: "Swimming"}
]

function winner(athletes) {
  for(var i = 0; i < athletes.length; i++) {
    athletes[i].win = function() {
      console.log(this.name + " won the " + this.event + " event.");
    }
  }
};

winner(athletes);
athletes[0].win();



// Jumble your words


function reverseWords(words) {
 console.log(words.split("").reverse().join(""));
};

var words = "!sdrow ruoy elbmuJ"
reverseWords(words)


// 2,4,6,8

function evenNumbers(numbers) {
  var evenArray = [];
  for(var i = 0; i < numbers.length; i++) {
    if(numbers[i] % 2 === 0){
      evenArray.push(numbers[i]);
    }
  }
  return console.log(evenArray);
}

var numbers = [1,2,3,4,5,6,7,8,9,10];

evenNumbers(numbers);

// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
//The hash-like data structure within an array, pretty much get familiar with the object properties .
// What are constructor functions?
// Whenever we want to create many objects of one type we use object constructor functions, and they rely on  the "this" keyword.
// How are constructors different from Ruby classes (in your research)?
// In Ruby there is a "self" reference , and in JavaScript there is a "this" reference.