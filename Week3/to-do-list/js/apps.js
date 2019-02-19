
document.addEventListener("DOMContentLoaded", function(){


  countListItems()

  // form to capture info
  var submitbtn = document.getElementById("additem");
  var formText = document.getElementById("newItem");

  submitbtn.addEventListener("click", function(event){
    event.preventDefault();
    var userInput = formText.value;
    addListItem(userInput);
    countListItems();
    formText.value = "";
  });
  // add itemsto List

  function addListItem(item){
    var ul = document.getElementById("list");
    var li = document.createElement("li");
    li.innerHTML = item;
    ul.appendChild(li);
  };


  // update items left to do count.
  function countListItems() {
    var counter = document.getElementById("count");
    var list_items = document.getElementsByTagName("li");
    counter.innerHTML = list_items.length;
  };

  //remove last button

  var remove = document.getElementById("removeItem");

  remove.addEventListener("click", function(){
    var ul = document.getElementById("list");
    var list_items = document.getElementsByTagName("li");
    if (list_items.length != 0) {
      ul.removeChild(list_items[list_items.length-1]);
      countListItems();
    }
  });


});
