(function() {
  var FizzBuzz;

  FizzBuzz = (function() {
    function FizzBuzz() {}

    FizzBuzz.prototype.say = function(number) {
      switch (false) {
        case number % 15 !== 0:
          return 'FizzBuzz';
        case number % 3 !== 0:
          return 'Fizz';
        case number % 5 !== 0:
          return 'Buzz';
        default:
          return number;
      }
    };

    return FizzBuzz;

  })();

  if (typeof module !== "undefined" && module !== null ? module.exports : void 0) {
    module.exports = FizzBuzz;
  } else {
    this.FizzBuzz = FizzBuzz;
  }

}).call(this);
