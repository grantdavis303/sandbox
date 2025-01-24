require 'pry'

# Problem 2

# Given an integer x, return true if x is a palindrome, and false otherwise.

# Input: Integer
# Output: Boolean

def is_palindrome(integer)
  string = integer.to_s
  length = string.length
  
  if length == 0 || length == 1
    return true
  elsif string[0] == string[string.length - 1]
    modified_string = string[1..string.length - 2]
    is_palindrome(modified_string)
  else
    return false
  end
end

p is_palindrome(121)
# Expecting true

p is_palindrome(-121)
# Expecting false

p is_palindrome(10)
# Expecting false

p is_palindrome(1234567890987654321)
# Expecting true

p is_palindrome(11)
# Expecting true