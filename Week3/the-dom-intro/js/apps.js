 console.log("Loaded");

//
// console.log(document.body.children[2].children[0].innerHTML);
//
//
// console.log(document.body.children[0].innerHTML);



// function changetitle() {
// document.body.children[0].innerHTML = "This has been updated."
// }
//
// setTimeout(changetitle, 5000);


//
//
//
// list.style.backgroundColor = "gainsboro";
//
// var selector = document.querySelectorAll("li.active")
//
//
// console.log(selector);


function addlistItem(value){
  var list= document.getElementById('list')
  var listitem = document.createElement("li");
  listitem.innerHTML = value;
  list.appendChild(listitem)
}


var shoppingList = ["sugar", "spice", "all things nice!!"];


// Write loop tp add shopping list to HTML file

for (var i = 0; i < shoppingList.length; i++) {
  addlistItem(shoppingList[i])
}

//Set every other list item to have class even
var list_items = document.getElementById('list').children


for (var i = 1; i < list_items.length; i+=2) {
  list_items[i].classList.add("even");

}


//update span count to be the number of items in the list.

 document.getElementById('count').innerHTML = list_items.length
