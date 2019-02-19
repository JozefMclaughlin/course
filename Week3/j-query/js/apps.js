console.log("loaded");

// Normal JS way to appendChild
// var parent = document.getElementById("list")
// var li = document.createElement("li")
//
// li.innerHTML = "This is another thing"
//
// parent.appendChild(li);
// $("li").addClass("done")

// var newitem = $("<li>learn jQuery<button type=\"button\" name=\"done\" class=\"markdone\">Mark as done</button></li>")
//
//
// $("#list").append(newitem);

// $(document).ready(function(){
// Content between loads after page
// });

updateCount();
addDoneListener();


function updateCount(){
  var listLength = $(".todo").length
  $("#count").html(listLength)
}

function randomItem(){
  var items = ["Go to Greggs", "Play Football", "Play kingdom Hearts"];
var random =  Math.floor(Math.random()*(items.length))
  return items[random]
};

$("#btn").click(function(){
  var newitem = randomItem();
  $("#list").append("<li class=\"todo\">"+newitem+"<button type=\"button\" name=\"done\" class=\"markdone\">Mark as done</button></li>");
  updateCount();
  addDoneListener();
});

function addDoneListener(){
  $(".markdone").click(function(){
    $(this).hide();
    $(this).parent().addClass("done");
    $(this).parent().removeClass("todo");
    updateCount();
  })
}
