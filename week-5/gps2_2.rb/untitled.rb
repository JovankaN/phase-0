
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]print key value pairs

# Method to add an item to a list
# input: item name and optional quantity
# steps:add new items with key and value  to the list
# output:print the new list

# Method to remove an item from the list
# input: hash with key and value
# steps:remove items from the list
# output:list of items without the one removed

# Method to update the quantity of an item
# input:hash key and value
# steps: update the quantity +1
# output: hash with updated values

# Method to print a list and make it look pretty
# input: hash items and quantity
# steps: go through each of them and print me the quantity and the items.
# output:buy me quantity of this item







def grocery_list(groceries)
  Hash.new
end
my_list = grocery_list( "everything")

def add_item(grocery_list,item, quantity)
  grocery_list[item] = quantity
  p grocery_list
end
add_item(my_list,"Lemonade", 2)
add_item(my_list, "Tomatoes", 3)
add_item(my_list, "Onions",1)
add_item(my_list,"Ice Cream",4)

 def remove_item(grocery_list,item)
  grocery_list.delete(item)
 end
remove_item(my_list , "Lemonade")

 def update_quantity(grocery_list,item, quantity)
 grocery_list[item] = quantity
  p grocery_list
end
update_quantity(my_list,"Ice Cream", 1)

def prety_list(grocery_list)
 puts "I want you to buy me :"
 grocery_list.each {|item, quantity| puts "#{quantity} #{item}"}
end
prety_list (my_list)


# Reflect:

# What did you learn about pseudocode from working on this challenge?
# - Learned that the input and steps are kinda different , pretty much input is a what the body of the method should consist of in my case, and the steps are which steps we need to follow   to have that input in order to have the wanted output, kinda how i got it.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
#-In this case i think we wanted to use Hashes because we had an Item and its quantity so i think it was better if we used hashes, tho i think it would be very confusing to use arrays in this exercise , if so i would be having the hardest time of my life...:))!
# What does a method return?
#-It will return whatever you tell it to.
# What kind of things can you pass into methods as arguments?
# - I think a lot of things, like Numbers,Srings, hashes , arrays a lot of things
# How can you pass information between methods?
# -Hmm maybe by creating a variables, something that my Guide explain a little to me, so you  create a variable outside of a method and that variable can be passed in the other methods too.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# Well i wanna say that how to pass information between methods ...very helpfull.