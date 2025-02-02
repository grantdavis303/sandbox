require 'pry'

michael = {
  name: 'Michael',
  age: 25,
  sports: ['hockey', 'baseball'],
  hobbies: ['playing piano']
}

# If Statement (accounts for only one true)

if michael[:name] == 'Michael'
  puts "Michael's name is Michael!"
end

# If / Else Statement (accounts for both true and false)

if michael[:age] >= 21
  puts 'Michael is of legal drinking age. Come to the bar!'
else
  puts 'Michael is not of legal drinking age. Come back another time!'
end

# If / Elsif Statement (accounts for multiple true)

if michael[:hobbies].include?('playing video games')
  puts "Michael's hobbies include playing video games!"
elsif michael[:hobbies].include?('playing piano')
  puts "Michael's hobbies include playing the piano!"
end

# If / Elsif / Else Statement (accounts for multiple true and false)

if michael[:sports].include?('football')
  puts 'Michael plays football!'
elsif michael[:sports].include?('soccer')
  puts 'Michael plays soccer!'
else
  puts 'Michael does not play football or soccer.'
end