function hide(event){
  var monkey = document.getElementById('monkey');
  monkey.hidden = true;
}
var hideButton = document.getElementById("hideButton");
hideButton.addEventListener("click", hide);

function reveal(event){
  var monkey = document.getElementById('monkey');
  monkey.hidden = false;
}
var revealButton = document.getElementById("revealButton");
revealButton.addEventListener("click", reveal);