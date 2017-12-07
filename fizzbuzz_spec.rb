require 'rspec'
require_relative 'classy_fizzbuzz'

describe FizzBuzz do
  it 'Takes 2 arguments' do
    fizzbuzz = FizzBuzz.new(3,5)
    expect(fizzbuzz.fizz).to eq(3)
    expect(fizzbuzz.buzz).to eq(5)
  end

  it 'takes a 1 and returns a 1' do
    fizzbuzz = FizzBuzz.new(3,5)
    expect(fizzbuzz.process(1)).to eq(1)
  end

  it 'Takes a 3 and returns a Fizz' do
    fizzbuzz = FizzBuzz.new(3,5)
    expect(fizzbuzz.process(3)).to eq('Fizz')
  end

  it 'Takes a 5 and returns a Buzz' do
    fizzbuzz = FizzBuzz.new(3,5)
    expect(fizzbuzz.process(5)).to eq('Buzz')
  end

  it 'Takes a 15 and returns a FizzBuzz' do
    fizzbuzz = FizzBuzz.new(3,5)
    expect(fizzbuzz.process(15)).to eq('FizzBuzz')
  end

  it 'Can take arbitrary values while being accurate' do
    fizzbuzz = FizzBuzz.new(3,4)
    expect(fizzbuzz.process(12)).to eq('FizzBuzz')
    expect(fizzbuzz.process(3)).to eq('Fizz')
    expect(fizzbuzz.process(8)).to eq('Buzz')
  end

end