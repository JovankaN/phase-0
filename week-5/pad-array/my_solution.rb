# Pad an Array

# I worked on this challenge [by myself, with: Todd Seller]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Each method accepts an array , a min_size that takes an optional argument of what the array should be padded with.
# What is the output? (i.e. What should the code return?)New array
# What are the steps needed to solve the problem?
# Iterate over array to to get the array length
# IF min_size is less than or equal to array length, RETURN array
# IF array length is less than the min_size RETURN a new padded array


# 1. Initial Solution
def pad!(array, min_size, value = nil)
if min_size <= array.length
    return array
  end
   p array << ([value] * (min_size - array.length))

end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  array2 = array.clone

  if min_size <= array2.length
    return array2
  end

  else
   p array2.concat([value] * (min_size - array2.length))

end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 array if min_size <= array.length
 array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
 array if min_size <= array.length
 array.clone.fill(value, array.length...min_size)
end



# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# - I think we kinda were successfull, it worked for us , even though i still find it easier for me  to write the code then pseudo...weird.
# Once you had written your pseudocode, were you able to easily translate it into code?
# -Yes but once we tryied it it only worked for one of the methods ...
 # What difficulties and successes did you have?
 #- We had a situation where when we used "<<" to push our value to the array it only worked in the destructive method , and ".concat" worked for the non-destructive i wonder why...and we had to use .clone when we set the new array to be equal to the existing one ...stil browsing around to figure out why...
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# - At the beggining we had errors , but as i said before we had to search and try things around like we had to use different methods to push our elements in the array for the destructive and the non-destructive , and we had to use .clone when we set the new array (in the non-destructive method ) to be equal to the existing one.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# -We learned about  .fill method used to fill our array with the new value, and the other argument “array.length…min_size” is just saying that we need to fill the array with “value” from the last element of our array up to the min_size.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# -Yes we did and i think it is pretty readable
# What is the difference between destructive and non-destructive methods in your own words?
#-An object-changing is the Destructive method, which means it will overwrite the original object with the changes made with that method. The non-destructive is the oposite i think it will create a separate object to store the changed version of the original object.