require 'pry'

# Problem 1

# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

# Input: Array of Integers, Integer
# Output: Array of Integers

def two_sum(nums, target)
  first_num_index = 0

  nums.each do |first_num|
    mod_start = first_num_index + 1
    mod_end = nums.length
    mod_nums = nums[mod_start..mod_end]

    if mod_nums.length > 0
      second_num_index = first_num_index + 1

      mod_nums.each do |second_num|
        if first_num + second_num == target
          return [first_num_index, second_num_index]
        else
          second_num_index += 1
        end
      end
    end

    first_num_index += 1
  end
end

p two_sum([2, 7, 11, 15], 9)
# Expecting [0, 1]

p two_sum([3, 2, 4], 6)
# Expecting [1, 2]

p two_sum([3, 3], 6)
# Expecting [0, 1]

p two_sum([1, 3, 5, 7, 8], 13)
# Expecting [2, 4]