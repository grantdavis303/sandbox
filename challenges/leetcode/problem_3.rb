require 'pry'

# Problem 3

# Given a roman numeral, convert it to an integer.

# Input: String
# Output: Integer

def roman_to_int(string)
  string.gsub!('IV','/4/')
  string.gsub!('IX','/9/')
  string.gsub!('XL','/40/')
  string.gsub!('XC','/90/')
  string.gsub!('CD','/400/')
  string.gsub!('CM','/900/')

  string.gsub!('I','/1/')
  string.gsub!('V','/5/')
  string.gsub!('X','/10/')
  string.gsub!('L','/50/')
  string.gsub!('C','/100/')
  string.gsub!('D','/500/')
  string.gsub!('M','/1000/')

  string.gsub!('//','+')
  string.gsub!('/','')
  all_numbers = string.split('+')

  all_numbers.map do |number|
    number.to_i
  end.sum
end

p roman_to_int('III')
# Expecting 3

p roman_to_int('LVIII')
# Expecting 58

p roman_to_int('MCMXCIV')
# Expecting 1994

p roman_to_int('MCMXCVI')
# Expecting 1996

p roman_to_int('DCCCLXXXVIII')
# Expecting 888