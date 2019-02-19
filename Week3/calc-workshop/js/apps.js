// Calculator
var tryagain = true;

while (tryagain) {

  var result =  null;
  //User Input
  var opperator_choice = prompt("Would you like (1)Basic Functions or (2)Advanced Functions?")

  while (opperator_choice != 1 && opperator_choice != 2) {
    opperator_choice = prompt("Would you like (1)Basic Functions or (2)Advanced Functions")
  }
  if (opperator_choice == 1 ) {
    var opperator = prompt("Do you want (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?") || "a"
    var num1 = parseInt(prompt("What is the first number?"));
    var num2 = parseInt(prompt("What is the 2nd number?"));
    switch (opperator) {
      case "a":
      result = num1 + num2;
      break;
      case "s":
      result = num1 - num2;
      break;
      case "m":
      result = num1 * num2;
      break;
      case "d":
      result = num1 / num2;
      break;
      default:
      console.log("Something went wrong");
    }
  }
  else {
    var opperator = prompt("Do you want (p)ower or (s)quare root?")
    switch (opperator) {
      case "p":
      var num1 = parseInt(prompt("What is the number?"));
      var num2 = parseInt(prompt("To what power?"));
      result = Math.pow(num1, num2)
      break;
      case "s":
      var num1 = parseInt(prompt("What is the number?"));
      result = Math.sqrt(num1)
      break;
      default:
      console.log("Something went wrong");
    }
  }

  //Output Answer
  if (result !== null) {
    alert("Your answer is: " + result)
  }

  tryagain = !prompt("Press enter to continue, or (q) to quit");

}
