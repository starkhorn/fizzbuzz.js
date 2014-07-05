class FizzBuzz

    say: (number) -> 

        switch
            when number % 15 is 0 then 'FizzBuzz'
            when number % 3  is 0 then 'Fizz'
            when number % 5  is 0 then 'Buzz'
            else number

if module.exports
    module.exports = FizzBuzz
else
    @FizzBuzz = FizzBuzz