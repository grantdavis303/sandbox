require 'pry'
require 'json'

data = File.read('data/people.json')
parsed_data = JSON.parse(data)

parsed_data.each do |person|
  puts person["first_name"]
end