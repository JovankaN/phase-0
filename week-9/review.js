// JavaScript Grocery List
// User Stories
//  Create a new list
//  Add an item with a quantity to the list
//  Remove an item from the list
//  Update quantities for items in your list
//  Print the list in nice format
//  Return the list
//  Pseudocode
//  Construct a new grocery list object.
//  Create a list prototype function that takes an "item" property and "quantity" value as arguments, and assigns them to the list object.
// C) Create a list prototype function that takes "item" as input and deletes it from the list object.
// D) Create a list prototype function that takes item and quantity as input.
// IF the list object already contains the item property
//   Set item quantity value to user's quantity value.
// ELSE
//   Throw an error stating that the item does not currently exist in the list.
// E) FOR loop through list object and print to console.
// F) Create a list prototype function that returns the list object.



// Initial Solution
function GroceryList() {}

GroceryList.prototype.addItem = function (item, quantity) {
  this[item] = quantity;
  console.log(quantity + " of " + item + " has been added.");
}

GroceryList.prototype.removeItem = function (item) {
  delete this[item];
  console.log(item + " has been removed from the list.");
}

GroceryList.prototype.updateQuantity = function (item, quantity) {
  if (this.hasOwnProperty(item)) {
    this[item] = quantity;
    console.log("The amount of " + item + " is now updated to " + quantity + ".");
  } else {
    throw "Unable to update! This list does not contain any " + item + ". Please add it first.";
  }
}

GroceryList.prototype.print = function () {
  console.log("This list contains:");
  for (var item in this) {
    if (typeof this[item] != 'function') {
      console.log("- " + this[item] + " of " + item);
    }
  }
}

GroceryList.prototype.getList = function () {
  var list = {};
  for (var item in this) {
    if (typeof this[item] != 'function') {
      list[item] = this[item];
    }
  }
  return list;
}

// Driver Code
var list = new GroceryList();

list.addItem("pineapple", 2);
list.addItem("apple", 1);


list.addItem("coffee", 1);
list.addItem("milk", 1);


list.removeItem("banana");

list.updateQuantity("banana", 2);



// Refactored Solution

function GroceryList() {
  this.list = {};
}

GroceryList.prototype.addItem = function (item, quantity) {
  this.list[item] = quantity;
  console.log(quantity + " of " + item + " has been added.");
}

GroceryList.prototype.removeItem = function (item) {
  delete this.list[item];
  console.log(item + " has been removed from the list.");
}

GroceryList.prototype.updateQuantity = function (item, quantity) {
  if (this.list.hasOwnProperty(item)) {
    this.list[item] = quantity;
    console.log("The amount of " + item + " is now updated to " + quantity + ".");
  } else {
    throw "Unable to update! This list does not contain any " + item + ". Please add it first.";
  }
}

GroceryList.prototype.print = function () {
  console.log("This list contains:");
  for (var item in this.list) {
    console.log("- " + this.list[item] + " of " + item);
  }
}

GroceryList.prototype.getList = function () {
  return this.list;
}

