# Numbers to Commas Solo Challenge

# I spent [2] days on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?Method that takes positive integer as its input
# What is the output? (i.e. What should the code return?) Returns a variable thats  comma-separated integer as a string.
# What are the steps needed to solve the problem?
 # define separate_comma(num)
 # if num is less than 1000
  # return string with no comma end
  # create a variable  that has a value of a integer giving it a function to separate the number with commas for every third number from the back.
 # iterate through that variable and if the number is bigger than 0   put a comma on every third element from the back when joined .


# 1. Initial Solution
def separate_comma(num)
  if num < 1000
    return num.to_s
  end
 arr = num.to_s.split("").reverse
  p arr


  number = 0
  for n in arr[0..9999999] do
    if number > 0 && number%3 == 0
      n.to_s<<','
    end
    number += 1
  end


  return arr.reverse.join

end


# 2. Refactored Solution

def separate_comma(num)
num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end


# .to_s: convert to string
# .split(""): split into separate digits
# .reverse: reverse order
# .each_slice(3): peel of each three digits (working from back end due to reverse)
# .map (&:join) - map into an array for each three digits - join back together with a delimiter and reverse order back to original
# .reverse: reverse order of mapped array
# .join(", "): join mapped array back together with space delimiter


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# -Pseudocoding first it did help a little bit even though i had hard time for my code to pass rspec ...but all those researching videos helped me a lot. Still trying to get used to pseudo.
# Was your pseudocode effective in helping you build a successful initial solution?
# I think so , just took a while to get the right syntax...
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# It was definitely very challenging challenge :)),i had a lot of dificulties trying to get this work , but once i researched and learned about some of this new methods it made sense,i'll list them like this:

# -
# .to_s: convert to string
# .split(""): split into separate digits
# .reverse: reverse order
# .each_slice(3): peel of each three digits (working from back end due to reverse)
# .map (&:join) - map into an array for each three digits - join back together with a delimiter and reverse order back to original
# .reverse: reverse order of mapped array
# .join(", "): join mapped array back together with space delimiter.

# How did you initially iterate through the data structure?
# I iterated with for loop to iterate through the numbers of the array that has the splitted numbers in reverse and if that number is bigger than 0   put a comma on every third element from the back when joined .
# Do you feel your refactored solution is more readable than your initial solution? Why?
# I think so , i am a person that understands better when everything is straight forward not to circle around to get to the point ...I wish in future to be able to use it more.