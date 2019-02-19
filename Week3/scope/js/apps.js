
//---------------------Outside Variable------------------------\\
console.log("Loaded");

var outsideVariable = 5;

function printwords(){
  console.log(outsideVariable);
}


printwords();

//--------------------Inside Variable-------------------------\\

// function doSomething(){
//   var insideVariable = "you can't see me"
// }
//
//
// doSomething();
//
// console.log(insideVariable);
//

// ----------------------Functions-----------------------\\

function first(){
  console.log("I am the first function");
}

function second(){
  first()
  console.log("I am the second function");
}

second();

//------------------------Nesting---------------------\\

var word1 = "butter";
var word2 = "yellow"

function joinWordsandPrint(string1, string2){
  var combinedstring = string1 + string2;

  function printString(string){
    console.log(string);
  }

  printString(combinedstring);
}

joinWordsandPrint(word2, word1);
