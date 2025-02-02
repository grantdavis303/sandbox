require 'pry'

# Times Loop
puts 'Times Loop'
6.times do
  print 'x '
end
puts ' '
puts ' '

# For Loop
puts 'For Loop (Array)'
for i in [1, 15, 653, 54, 245, 54] do
  print "#{i} "
end
puts ' '
puts ' '

puts 'For Loop (Range - Prints 20 Times)'
for i in (0...20) do
  print "#{i} "
end
puts ' '
puts ' '

puts 'For Loop (Range - Prints 21 Times)'
for i in (0..20) do
  print "#{i} "
end
puts ' '
puts ' '

# While Loop
puts 'While Loop'
switch = 0
while switch < 10 do
  switch += 1
  print "#{switch} "
end
puts ' '
puts ' '

# Infinite Loop
switch = 0
puts 'Infinite Loop'
loop do
  switch += 1
  print "#{switch} "
  break if switch >= 100
end