var titles = document.getElementsByTagName('h1');
var title = titles[0];
title.style.color = "white";
var titles2 = document.getElementsByTagName('h2');
var title2 = titles2[0];
title2.style.color = "pink";

var list = document.getElementsByClassName("column");
for (var i=0; i<list.length; i++) {
	list[i].style.color = "blue";
}

// var click = document.getElementById("Shoo-face");
// click.addEventListener("click", background-color = "white");

function changeBorder() {
	event.target.style.border = "5px solid red"
  console.log("we are running!")
}

var foo = document.getElementsByTagName('h3')
var bar = foo[0]
bar.addEventListener("click", changeBorder);