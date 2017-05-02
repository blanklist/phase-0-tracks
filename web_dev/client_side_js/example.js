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