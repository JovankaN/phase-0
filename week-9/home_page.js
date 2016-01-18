// DOM Manipulation Challenge


// I worked on this challenge [ with:Gino Capio ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('#release-0').className = "done";



// Release 1:

document.getElementById('#release-1').style.display = "none";


// Release 2:

document.getElementByTagName('h1')[0].innerHTML = "I completed release 2.";

// Release 3:

document.getElementById('#release-3').style.backgroundColor = "#955251";



// Release 4:

document.getElementByClassName('.release-4').style.fontSize = "2em";


// Release 5:
var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));