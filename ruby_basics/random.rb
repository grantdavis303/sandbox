require 'pry'
require 'json'
require 'date'

# string.bytes.each do |byte|
#   if byte > 100
#     print "#{byte} "
#     sleep(2)
#   else
#     print "#{byte} "
#     sleep(0.2)
#   end
# end

size = 6

size.times do
  array = Array.new
  size.times do
    array << rand(0..100)
  end
  array
end

# rand(0..100)
# Create a new array of n length

binding.pry