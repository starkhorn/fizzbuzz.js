describe 'FizzBuzz', ->

    it 'displays 1 for number 1', ->
        fizzbuzz = new FizzBuzz

        expect(fizzbuzz.say 1).toEqual 1

