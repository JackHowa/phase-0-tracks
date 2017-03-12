// var colors = ["blue","red","orange","violet"];

// var names = ["Paul","Ringo","John","George"];

// // names.push("Ed")

// // console.log(names)

// // colors.push("yellow")

// // console.log(colors)

// var color_names = {};
// for (var i = 0;i < names.length; i++) {
// 	color_names[names[i]] = colors[i];
// }
// console.log(color_names);

function Car(type, year, working) {
	this.type = type;
	this.year = year;
	this.working = working;

	console.log("CAR INITIALIZATION COMPLETE");

	this.honk = function() { console.log("The "+ type + " honk honks!"); };


}

var newCar = new Car("jeep",1994,true);
var newCar1 = new Car("honda",1990,true);
var newCar2 = new Car("volvo",2002,true);

newCar.honk()
newCar1.honk()
newCar2.honk()
