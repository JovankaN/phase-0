// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
 bodyElement = $('body')
 dbc = $('.mascot > h1')
 bodyH1 = $('body > h1')
 logo = $('.mascot > img')
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
bodyH1.css ({
  'color' : 'white',
  'border' :'10px solid red',
  'visibility' : '50%'
});
dbc.html('The incredible Squirrels Cohort, 2016!!');
//RELEASE 4: Event Listener
  // Add the code for the event listener here and we did
  //RELEASE 5: Experiment on your own too :
 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://s-media-cache-ak0.pinimg.com/736x/d5/e7/32/d5e732aa51e26832b4032d59fe309734.jpg')
    $('img').animate({
    height: "100%",
    width: "100%",
    border: "2px"
    });
    });
    $('img').on('mouseleave', function(e){

    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
    $('img').animate({
     height: "30%",
     width: "30%",
     border: "2px"
    });
    });
});




 // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflect:
// What is jQuery?
// jQuery is a library, or set of helpful add-ons, to the JavaScript programming language, or as "w3schools" would say jQuery is a lightweight, "write less, do more", JavaScript library.
// What does jQuery do for you?
//It makes Javascript much easier to use, it takes a lot of common tasks that require many lines of JavaScript code to accomplish, and wraps them into methods that you can call with a single line of code.
// What did you learn about the DOM while working on this challenge? It is a programming interface for HTML and XML documents, a webpage itself is a document so The Document Object Model (DOM) provides another way to represent, store and manipulate that same document.The DOM is a fully object-oriented representation of the web page, and it can be modified with a scripting language such as JavaScript. The DOM creates a hierarcy corresponding to the structure of each web document.
// I implemented this paragraph from
// http://code.tutsplus.com/tutorials/javascript-and-the-dom-series-lesson-1--net-3134
// An 'Element' node represents an element within a page. So if you have a paragraph element ('<p>') then it can be accessed through the DOM as a node.
// A 'Text' node represents all text (within elements) within a page. So if your paragraph has a bit of text in it can be directly accessed through the DOM.
// The 'Document' node represents the entire document. (it's the root-node of the DOM hierarchy/tree).
// Also note that element attributes are DOM nodes themselves.