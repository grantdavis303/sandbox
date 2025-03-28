require 'pry'

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Getters
  def get_name
    return @name
  end

  def get_age
    return @age
  end

  # Setter
  def change_name(new_name)
    @name = new_name
  end

  # Doesn't set, just changes the value
  def change_age
    @age += 1
  end
end

dave = Person.new('Dave', 30)

binding.pry