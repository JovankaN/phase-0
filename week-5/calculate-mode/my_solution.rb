# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Johanna Lonn]

# I spent [1.30] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode



# 0. Pseudocode

# What is the input? An array of numbers
# What is the output? (i.e. What should the code return?) The most frequent element
# What are the steps needed to solve the problem?
  # Create an empty hash.
  # Iterate through each value in the array.
  # For every element stored in the hash key, increase it by 1.
  # Create empty array for most repeated number.
  # Compare values to determine if there is a match.
  # Return sorted mode array.



# 1. Initial Solution

def mode(array)
  frequent = Hash.new(0)
  array.each do |integer|
  frequent[integer] += 1
  end

  mode_array = []

  frequent.each do |key, value|
  if value == frequent.values.max
  mode_array << key
  end
  end

  mode_array.sort

end

# 3. Refactored Solution

def mode(array)
  frequent = Hash.new(0)

  array.each { |integer| frequent[integer] += 1 }

  mode_array = []

  frequent.each do |key, value|
  if value == frequent.values.max
  mode_array << key
  end
  end

  mode_array.sort

end



# Which data structure did you and your pair decide to implement and why?
# - We decided to implement a hash, where value is the frequent element and key is the array.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# - For myself specificlly it still kinda hard to do pseudo code since we were trying things that wouldn't work then rewrite pseudo and go again ...So i will say the previous excercise was better for me to pseudocode.
# What issues/successes did you run into when translating your pseudocode to code?
# Many ...mostly syntax errors that had to research a lot.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used a lot of methods like .each; .new; << ; .sort; .values ; .max;.