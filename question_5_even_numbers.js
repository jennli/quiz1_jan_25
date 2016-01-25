// Write a function in JavaScript that takes in a number n and returns the first n even numbers.

//assuming even numbers start at zero, disregarding negative numbers
var evenNumbers = function(n){

  var result = [];
  var counter = 0;

  for(var x = 0; x < n; ++x){
    result.push(counter);
    counter +=2;
  }

  return result;
}
