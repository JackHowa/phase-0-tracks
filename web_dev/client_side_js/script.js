console.log("The script is running!");

function toggle_visibility(event) {
       var cham = document.getElementById("lizard-photo");
   
       if(cham.style.display == 'block')
          cham.style.display = 'none';
       else
          cham.style.display = 'block';
}

var cham = document.getElementById("lizard-photo");

var hide = document.getElementById("hide");
photo.addEventListener("click",toggle_visibility)

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);