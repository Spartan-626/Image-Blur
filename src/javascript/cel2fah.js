var readlineSync = require("readline-sync");

// // var degrees = readlineSync.question("Enter degrees in Celsius: ");
// var degreesNum = Number(degrees);
// var degreesFahrenheit = degreesNum * 1.8 + 32;
// console.log("It is " + degreesFahrenheit + " degrees Fahrenheit!");

var degrees = readlineSync.question("Enter degrees in Fahrenheit: ");
var degreesNum = Number(degrees);
var degreesCelsius = ((degreesNum - 32) * 5) / 9;
console.log("It is " + degreesCelsius + " degrees Celsius!");
