#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'fizzBuzz' function below.
#
# The function accepts INTEGER n as parameter.
#

def fizzBuzz(n)
  # In the range from 1 to n
  range = (1..n)

  range.each do |value|
    if value % 3 == 0 && value % 5 == 0
      puts 'FizzBuzz'
    elsif value % 3 == 0
      puts 'Fizz'
    elsif value % 5 == 0
      puts 'Buzz'
    else
      puts value
    end
  end
end

puts "Enter n:"
n = gets.strip.to_i

fizzBuzz n