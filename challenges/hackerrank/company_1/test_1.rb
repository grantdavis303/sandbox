require 'pry'

def findNumOfPairs(a, b)
  new_arr = Array.new

  # [2,1], [3,1], [4,1], [5,1] = 4
  # I originally misunderstood the question and was wondering why the answer wasn't 4 when 2>1, 3>1, 4>1, and 5>1 are all true. I now realize my mistake of not tracking the index position of the second array and only counting pairs up until arr_2.length.

  a.each do |first_arr_num|
    b.each do |second_arr_num|
      if first_arr_num > second_arr_num && !new_arr.include?([first_arr_num, second_arr_num])
        new_arr << [first_arr_num, second_arr_num]
      end
    end
  end

  new_arr.length
end

p findNumOfPairs([1, 2, 3], [1, 2, 1])
# Expecting 3

p findNumOfPairs([1, 2, 3, 4, 5], [6, 6, 1, 1, 1])
# Expecting 3