console.log("loaded");

// Take a range of values and for each value will return a value of Fizz if a multiple of 3, Buzz if a multiple of 5, FizzBuzz if it's a multiple of 15 and return the number if none of them apply

 //Ask user for the range of values
var num1 = parseInt(prompt("What is the start of your range?"))
var num2 = parseInt(prompt("What is the end of your range?"))

rangeLoop(num1, num2);

//function to loop through the range of values

function rangeLoop(num1, num2){
  for ( num1; num1 <= num2; num1++){
    FizzBuzz(num1);
  }
}



// function to evaluate FizzBuzz

function FizzBuzz(num){
  if (num % 15 == 0) {
    console.log("FizzBuzz") ;
  }
  else if (num % 3 == 0) {
    console.log("Fizz");
  }
  else if (num % 5 == 0) {
    console.log("Buzz") ;
  }
  else{
    console.log(num)
  }
}
