require 'pry'

# Problem 4

# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string '".

# Input: Array of Strings
# Output: String

def longest_common_prefix(strs)
  if strs.length == 1 || strs.first.empty?
    common_prefix = strs.first
  else
    common_prefix = String.new
    counter = 0

    strs.first.chars.each do |char_being_checked|
      char_array = Array.new

      strs[1..strs.length].each do |word|
        char_array << word[counter]
      end

      bool_array = char_array.map do |char|
        if char == char_being_checked
          char = true
        else
          char = false
        end
      end

      if bool_array.include?(false)
        return common_prefix
      else
        common_prefix << char_being_checked
        counter += 1
      end
    end
  end

  common_prefix
end

p longest_common_prefix([''])
# Expecting ''

p longest_common_prefix(['a'])
# Expecting 'a'

p longest_common_prefix(['', ''])
# Expecting ''

p longest_common_prefix(['flower', 'flow', 'flight'])
# Expecting 'fl'

p longest_common_prefix(['dog', 'racecar', 'car'])
# Expecting ''

p longest_common_prefix(['flower', 'flower', 'flower', 'flower'])
# Expecting 'flower'

p longest_common_prefix(['antiseptic', 'antibiotic', 'antisocial', 'anticlimax', 'antidote'])
# Expecting 'anti'