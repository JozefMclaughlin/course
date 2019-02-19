console.log("JS Loaded");
//
// var age = prompt("how old are you?");
//
// age = parseInt(age);
//
// if (age >= 18) {
//   alert("Have a beer. You are old enough.")
//   var choice = prompt("What beer do you want 1)Becks or 2)Grolsch?")
//   if (choice == 1) {
//     // == is needed to ensure that the string is equal to 1 and not there is 1 string
//     alert("Becks! Good choice.")
//   }
//   else {
//     alert( "Poor choice!!")
//   }
// }
// else {
//   alert("Go away, no youth allowed.")
// }

//
// var choice = prompt("Would you like 1, 2 or 3?")

// if (choice == 1) {
//   alert("1 is the best");
// }
// else if (choice == 2) {
//   alert("2 is great");
// }
// else if (choice == 3) {
//   alert("3 is alright");
// }
// else {
//   alert("Invalid choice");
// }

// switch (choice) {
//   case "1":
//     alert("1 is the best");
//     break;
//   case "2":
//     alert("2 is average");
//     break;
//   case "3":
//     alert("You are wrong");
//     break;
//   default:
//     alert("Invalid choice");
// }
//
//
// var name = prompt("What is your name?");
//
// switch (name) {
//   case "Bob":
//     alert("You are not welcome here.");
//     break;
//   case "Bill":
//       alert("You are welcome here.");
//     break;
//   default:
//     alert("That is not a name I have heard in a long time.");
// }


//Comparitors

//  > Greater Than
//  < Less Than
// <= Less than or equal
//  >= Greater than or equal
//  == look for equivilance in value but not type
//  === looks for equivelece in value and type
// != not equal to

// if ((qualifyer1) && (qulifyer2)) {
//  "all of the qualifyers are met"
// }else {
//   "if any of the qualifiers fail"
// }
// if ((qualifyer1) || (qulifyer2)) {
//  "one of the qualifyers is met"
// }else {
//   "none  of the qualifiers are met"
// }

// Loops
// for (var i = 0; i <= 100; i+=2) {
//   console.log("i is equal to: " + i);
// }
//
//
// var array = ["bob", "is", "great"];
//
// for (var i = 0; i < array.length; i++) {
//   console.log(array[i]);
// }

// var i=7
//
// while (i < 5) {
//   console.log("this loop has ran " + i + " times.")
//   i++
// }

// do {
//   console.log("this loop has ran " + i + " times.")
//   i++
// } while (i<5);



var object = {
  name: "bob",
  age: 23,
  city: "brum"
}

for (var key in object) {
  console.log(key + ": " +object[key]);
}


var numArray = [1,2,3,4]
for (value of numArray){
  console.log(value);
}
