var colors = ["blue","red","orange","violet"];

var names = ["Paul","Ringo","John","George"];

// names.push("Ed")

// console.log(names)

// colors.push("yellow")

// console.log(colors)

var color_names = {};
for (var i = 0;i < names.length; i++) {
	color_names[names[i]] = colors[i];
}
console.log(color_names);




// var colorAdder = function(names) {
// 	for (var i = 0; i < names.length; i++) {
// 		names.push[colors[i]];
// 		console.log(names)
// 	}
// }

// console.log(colorAdder(names))