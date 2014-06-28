describe 'FizzBuzz', ->

    it 'says 1 for number 1', ->
        fizzbuzz = new FizzBuzz

        expect(fizzbuzz.say 1).toEqual 1

    it 'says 2 for number 2', ->
        fizzbuzz = new FizzBuzz

        expect(fizzbuzz.say 2).toEqual 2