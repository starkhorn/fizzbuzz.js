FizzBuzz    = require('../public/coffee/fizzbuzz')
expect      = require('chai').expect

describe 'FizzBuzz', ->

    beforeEach ->
        @fizzbuzz = new FizzBuzz

    it 'says 1 for number 1', ->
        expect(@fizzbuzz.say 1).to.equal 1

    it 'says 2 for number 2', ->
        expect(@fizzbuzz.say 2).to.equal 2

    it 'says "Fizz" for number 3', ->
        expect(@fizzbuzz.say 3).to.equal 'Fizz'

    it 'says "Buzz" for number 5', ->
        expect(@fizzbuzz.say 5).to.equal 'Buzz'

    it 'says "Fizz" for number 6', ->
        expect(@fizzbuzz.say 6).to.equal 'Fizz'

    it 'says "Buzz" for number 10', ->
        expect(@fizzbuzz.say 10).to.equal 'Buzz'

    it 'says "FizzBuzz" for number 15', ->
            expect(@fizzbuzz.say 15).to.equal 'FizzBuzz'