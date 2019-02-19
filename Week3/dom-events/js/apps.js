console.log("Loaded");




document.addEventListener( "DOMContentLoaded", function(){
  console.log("This code is ran when the code is finished loading.");

  var button1 = document.getElementById("btn1")


  // button1.addEventListener("click", function(event){
  //   console.log(this);
  // });


  var buttons = document.getElementsByClassName("buttonrow");

  for (var i = 0; i < buttons.length; i++) {
    var button = buttons[i]

    button.addEventListener("click", function(event){
      console.log(this.value + " was clicked");
    });
  }

  // button1.addEventListener("click", addClass);
  //
  //
  function addClassOnClick(){
    button.classList.add("btnclicked");
    console.log("Button  was clicked");
  }

  var form = document.getElementById("form")

  form.addEventListener("submit",function(event){
    console.log("form submitted");

    event.preventDefault();

    var firstnameField = document.getElementById("firstname");

    if (firstnameField.value) {
      form.submit();
    }else{
      console.log("You must enter a name.");
    }

  });

  //bubbling

  var div1= document.getElementById("div1")
  var div2= document.getElementById("div2")
  var div3= document.getElementById("div3")

  div1.addEventListener("click", function(event){
    console.log("div1 was clicked");
  });
  div2.addEventListener("click", function(event){
    console.log("div2 was clicked");
    event.stopPropagation()
  });
  div3.addEventListener("click", function(event){
    console.log("div3 was clicked");
  });




});
