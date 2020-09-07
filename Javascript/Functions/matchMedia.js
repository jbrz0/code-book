// Use media query functionality in JS, like CSS media queries
/*
https://developer.mozilla.org/en-US/docs/Web/API/Window/matchMedia
*/

function myFunction(x) {
  if (x.matches) {
    // If media query matches parameters
    document.body.style.backgroundColor = "yellow"
  }
  else {
    document.body.style.backgroundColor = "pink"
  }
}

// Set the media query parameter
var x = window.matchMedia("(max-width: 700px)")

// Call listener function at run time
myFunction(x)

// Additionally, add a listener for further changes
x.addListener(myFunction)
