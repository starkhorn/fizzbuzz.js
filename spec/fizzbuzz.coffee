describe 'FizzBuzz', ->

    beforeEach ->
        @fizzbuzz = new FizzBuzz

    it 'says 1 for number 1', ->
        expect(@fizzbuzz.say 1).toEqual 1

    it 'says 2 for number 2', ->
        expect(@fizzbuzz.say 2).toEqual 2

    it 'says "Fizz" for number 3', ->
        expect(@fizzbuzz.say 3).toEqual 'Fizz'

    it 'says "Buzz" for number 5', ->
        expect(@fizzbuzz.say 5).toEqual 'Buzz'

    it 'says "Fizz" for number 6', ->
        expect(@fizzbuzz.say 6).toEqual 'Fizz'

    it 'says "Buzz" for number 10', ->
        expect(@fizzbuzz.say 10).toEqual 'Buzz'
