
# I worked on this challenge [by myself,].
# This challenge took me [1.30] hours.


# Pseudocode
# Input : Array of integers
# Output : return Fizzbuzzed array :)!
# Iterate thorugh the array , try to use "map",
# if the integer is divisible by 3 and by 5, set the value to 'Fizzbuzz',
# if the integer is divisible by 3, set the value to 'Fizz'
# if the integer is divisible by 5, set the value to 'Buzz'


# Initial Solution

# def super_fizzbuzz(array)
#   array.map {|i|
#     if i % 3 == 0 && i % 5 == 0
#       i = "FizzBuzz"
#     elsif i % 5 == 0
#       i = "Buzz"
#     elsif i % 3 == 0
#       i = "Fizz"
#     else
#       i = i
#     end
#   }
# end

# p super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
# p super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
# p super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]

# p super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

# Refactored Solution
#  found out about another way with each_index  method

def super_fizzbuzz(array)
  array.each_index do |i|
    if array[i] % 3 == 0 && array[i] % 5 == 0
      array[i] = 'FizzBuzz'
    elsif array[i] % 5 == 0
      array[i] = 'Buzz'
    elsif array[i] % 3 == 0
      array[i] = 'Fizz'
    end
  end
  array
end

p super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
p super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
p super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]

p super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

# Reflection
# What concepts did you review or learn in this challenge?
# Iterating  and loop with "each_index"-(same as #each, but passes the index of the element instead of the element itself.)  and "map" method - returns a new array with the values.
# What is still confusing to you about Ruby?
# Searching the docs...i a still not confident about it..and the fact that i started mixing up the syntax ...i got kind of worried that i might be forgeting some important stuff..
# What are you going to study to get more prepared for Phase 1?
# Iteration, loops, classes inheritance for sure that is my weakness, and learning more built-in methods hopefully.