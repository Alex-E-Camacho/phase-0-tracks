function upcase(event) {
  event.target.style.textTransform = "uppercase";

}

var headers = document.getElementsByTagName("h1");
var header=headers[0];
header.addEventListener("mouseover", upcase);


var photo = document.getElementById("octopus")
photo.style.border = "3px solid blue"