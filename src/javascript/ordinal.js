var readlineSync = require("readline-sync");

var ordinal = function(digit) {
  var digitNum = Number(digit);
  var lastDigit = digitNum % 10;
  if (lastDigit === 1) {
    return digit + "st";
  }
  return lastDigit;
};

var input = readlineSync.question("Enter a digit: ");

var value = ordinal(input);
console.log(value);
