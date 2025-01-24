require 'pry'

def countSignals(frequencies, filterRanges)
  lowest_range = 0
  highest_range = 1000000000000 # I know this is probably best practice, I just wasn't sure how best to solve this the right way in a shortened amount of time :)

  filterRanges.each do |range|
      lowest_range = range[0] if range[0] > lowest_range
      highest_range = range[1] if range[1] < highest_range
  end

  range = (lowest_range..highest_range)
  counter = 0

  frequencies.each do |frequency|
      counter += 1 if range.include?(frequency)
  end

  counter
end

p countSignals([8, 15, 14, 16, 21], [[10, 17], [13,15], [13,17]])
# Expecting 2