class FizzBuzz
  attr_accessor :fizz
  attr_accessor :buzz
  attr_writer :input

  def initialize(fizz, buzz)
    @fizz = fizz
    @buzz = buzz
  end

  def process(input)
    @input =  input
    if @input % fizz == 0 && @input % buzz == 0
      'FizzBuzz'
    elsif @input % fizz == 0
      'Fizz'
    elsif @input % buzz == 0
      'Buzz'
    else
      @input
    end
  end
end


fizzbuzz = FizzBuzz.new(3,5)
(1..100).each {|n| puts fizzbuzz.process(n) }
