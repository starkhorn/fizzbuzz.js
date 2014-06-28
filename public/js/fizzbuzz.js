(function() {
  var FizzBuzz;

  FizzBuzz = (function() {
    function FizzBuzz() {}

    FizzBuzz.prototype.say = function(number) {
      switch (number) {
        case 3:
          return 'Fizz';
        case 5:
          return 'Buzz';
        default:
          return number;
      }
    };

    return FizzBuzz;

  })();

}).call(this);
