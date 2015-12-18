

# Your Names
# 1)Jovanka Nikolovski
# 2)Dave Spivey

# We spent [1:30] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  # defined a method serving_size_calc that takes two arguments
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #   create a hash called library that stores key and value

  #   variable set to a value

  #  iterate through hash comparing value to the value asociated with the input, if it doesn't equal than the error_counter substrack 1

  #   if food not in hash, raise error
  if !library.has_key? item_to_make
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # set variable eq to first element in array of values associated with key
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  if remaining_ingredients == 0
  # determine remaining ingredients using input argument % variable for serv size
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
    # return string with ingredient instructions if remaining_ingredients is 0
    else
      return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
  # if not 0, return instructions about leftovers and suggest TODO list
end
# Driver code
p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 8)
 p serving_size_calc("cake", 5)
 p serving_size_calc("cake", 7)
 p serving_size_calc("cookie", 1)
 p serving_size_calc("cookie", 10)
 p serving_size_calc("THIS IS AN ERROR", 5)

 # Reflect:


# What did you learn about making code readable by working on this challenge?
#Learned that if you have a bit more complex code it is super hard to read and makes things more complicated, like if you want to add or do something to the code it is important that the code is readable , and its easier to maintain the same.

# Did you learn any new methods? What did you learn about them?
# Learned about has_key?Which returns true if the given key is present in the hash or false if if its not.

# What did you learn about accessing data in hashes?
# Still lot to learn, mainly to call hash value by calling hash[key]

# What concepts were solidified when working through this challenge?
# That if you have or write readable code, it is easier to maintain , and makes a big difference and time saving too.