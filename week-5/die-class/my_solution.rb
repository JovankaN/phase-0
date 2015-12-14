











# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: The variable sides whese sides is a positive integer
# Output:Random number when a die roll, number of the sides and If we pass Die.new a number less than 1, we should raise an ArgumentError.
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Number of sides should be greater than 0.")
    end
  end

  def sides
   @sides
  end

  def roll
   1+ rand(@sides)
  end
end



# 3. Refactored Solution
class Die

 def initialize(sides)
    @sides = sides
    return raise ArgumentError.new("Number of sides should be greater than 0.") if @sides < 1

  end


  def roll
   1+ rand(@sides)
 end


  def roll
   1+ rand(@sides)
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one? Is error  when there is an unwanted  argument passed such as the wrong number or wrong argument passed .
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?The ArgumentError was pretty new and the fact that i used instance variables and class methods
# What is a Ruby class? Set of methods and plan oh the object behavior , class is defined by a set of attributes which are made up of methods and variables
# Why would you use a Ruby class?
# Because it allows you to organize other subclass and variables under one class.
# What is the difference between a local variable and an instance variable?# A local variable is only usable within  the method where it was created and an instance variable is usable within a wider scope.
# Where can an instance variable be used? In any methods of the same class.