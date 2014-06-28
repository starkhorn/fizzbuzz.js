class FizzBuzz

    say: (number) -> 

        switch
            when number % 3 is 0 then 'Fizz'
            when number % 5 is 0 then 'Buzz'
            else number