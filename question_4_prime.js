// 4. Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

var isPrime = function(n){

  var isPrimeNumber = true;

  for(var x = 2; x<= Math.sqrt(n); ++x){

    if (n % x === 0){
      isPrimeNumber = false;
    }
  }

  return isPrimeNumber;
};
