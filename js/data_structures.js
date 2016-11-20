// var colorsArray1 = ["blue", "muted orange", "pink", "yellow"];

// var namesArray1 = ["Ed", "Jerry", "Lina", "George"]

// colorsArray1.push("calico")

// namesArray1.push("Bob")

// Iterate through each name or color array
// Create a new variable for new object
// Assign key to horse name and value to color

// var horses = {} 

// for (var x = 0; x < namesArray1.length; x ++) {

// 	horses[namesArray1[x]] = colorsArray1[x];
// }

// console.log(horses)

function Car(year, model, color) {
	console.log("Car starting...");
	this.year = year;
	this.model = model;
	this.color = color;
	this.horn = function() { console.log("Beep beep!"); };
	console.log("Your car is waiting...");
}

var newCar = new Car(1956, "Chevrolet Corvette", "red");

console.log(newCar.year);

newCar.horn();

var ford = new Car(2016, "Mustang", "black"); 


Object.keys(ford).forEach(function(key) {console.log(key)})