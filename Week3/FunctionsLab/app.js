// 1. Write a function called 'multiply' that multiplies two numbers and returns the result
function multiply (a, b) {
  var result = (a * b)
  return result;
}

// 2. Write a function called 'addThree' that adds three numbers together and returns the result
 function addThree (a,b,c){
   var result =(a+b+c)
   return result;
 }
// 3. Write a function called 'smallestNumber' that returns the smaller of 2 numbers
function smallestNumber (a,b){
  if (a > b) {
    return b;
  }else {
    return a
  }
}
// 4. Write a function called 'maxOfThree' that returns the largest of 3 numbers

  function maxOfThree(a,b,c) {
    if (a > b && a > c) {
      return a
    }
    else if ( b > c) {
      return b
    }
    else {
      return c
    }
  }
// 5. Write a function called 'reverseString' that returns the reverse a string
  function reverseString(string){
    return string.split('').reverse().join('');
  }

// 6. Write a function called 'disemvowel' that returns a string with the vowels stripped out

function disemvowel(string){
  return string.split("a").join('').split("e").join('').split("i").join('').split("o").join('').split("u").join('');
}

// 7. Write a function called 'removeOdd' that removes all ODD number from an array

function removeOdd(array) {
  for (var i = 0; i < array.length; i++) {
    while (array[i] % 2) {
      array.splice(i, 1);
    }
  }
  return array;
}

// 8. Write a function called 'removeEven' that removes all EVEN number from an array
function removeEven(array) {
  for (var i = 0; i < array.length; i++) {
    while ((array[i] % 2) == 0) {
      array.splice(i, 1);
    }
  }
  return array;
}
// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length

function longestString(array) {
  var high = array[0]
  var temp
  for (var i = 0; i < array.length; i++) {
    temp = array[i]
    if (temp.length > high.length){
      high = temp
    }
  }
  return high;
}
// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]

function allElementsExceptFirstThree(array) {
    array.shift();
    array.shift();
    array.shift();
  return array;
}

//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}

function convertArrayToAnObject(array) {
  var object = {}
  for (var i = 0; i < array.length; i+=2) {
      object[array[i]] = array[i+1];
    }
  return object;
}

// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".

function fizzBuzz(num) {
  if (num % 3 == 0 && num % 5 == 0) {
    return "FizzBuzz";
  }
  else if (num % 3 == 0) {
    return "Fizz";
  }
  else if (num % 5 == 0) {
    return "Buzz";
  }
  else{
    return num;
  }
}
