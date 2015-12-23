
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with:Gino Capio ].
# I spent [5] hours on this challenge.

# Pseudocode



# Input: 16 digits
# Output: valid cc
# Steps:
# initialize a method credit_card
#   get number from user
#   check if number length is 16
#     if not equal 16 raise error
#     access every other number starting from the second to the last, moving left and double those numbers
#     if number is higher than 9
#      split the number and add to the rest of the numbers.
#     if total number is multiple of 10 return true
#      else return invalid number


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


# class CreditCard
#   def initialize(creditcard_numbers) # initialize a method credit_card and get number from user
#     @creditcard_numbers = creditcard_numbers
#     @number_length = creditcard_numbers.to_s.length
#     argument
#     #access every other number starting from the second to the last, moving left and double those numbers
#   end

#   def check_card
#    first_and_second_step
#   third_step
#   end

#   def first_and_second_step
#     cc_number_array = @creditcard_numbers.to_s.split(//).map(&:to_i)
#     numbers_to_add = []
#     @numbers_to_add = numbers_to_add
#     cc_number_array.each_with_index do |value,index|
#        if index % 2 == 0   # iterates over every other index and doubled values <9
#         numbers_to_add.push(value *2 )
#       elsif index % 2 == 0 && (value * 2) > 9      # if doubled value is higher than 9 split
#            numbers_to_add.push((value *2).to_s.split(//).map(&:to_i))
#       else
#         numbers_to_add.push(value) # add other numbers to array
#       end
#     end
#   end

#   def third_step
#     temp_array = []
#     temp_array = @numbers_to_add.join.split(//).map(&:to_i)  # makes an array with 2 digit numbs separated

#     array_of_final_num = temp_array.inject{|sum,value| sum + value } # adds up all numbers
#     p array_of_final_num
#     p array_of_final_num % 10 == 0 # checks if sum is divisible by 10
#   end

#   def argument
#   raise ArgumentError.new("Invalid number. Number has to be 16 digits.") if @number_length != 16
#   end
# end
# CreditCard.new(4408041234567901)


# Refactored Solution


class CreditCard
def initialize (credit_card)
  @credit_card = credit_card
  @number_length = credit_card.to_s.length
 if @number_length != 16
      raise ArgumentError.new("Invalid number. Number has to be 16 digits.")
 end
end

def check_card
 ary = @credit_card.to_s.split(//).to_a
 ary.each_with_index do |x,y|
  if (y % 2 == 0)
  x.replace (x.to_i*2).to_s

  end
 end
sum = 0

  ary.join.split(//).each do |num|
    sum = sum + num.to_i
  end
  if sum % 10 == 0
    return true
  else
    return false
  end
end
end
credit_card =4408041234567901
card =CreditCard.new(credit_card)
card.check_card








# Reflection

# What was the most difficult part of this challenge for you and your pair?
 # Well first of all we worked and created many variables that we were passing on but it looked a bit messy and not readable, so the  researching to make our code a bit organized and more readable and the whole thing in converting into strings, inetgers etc. i wanna say it was the most difficult part.
# What new methods did you find to help you when you refactored?
# I feel like we could have refactored more , but i already burned out from researching and thinking how to make it more redable..but we used ".replace" method that replaces the contents and taintedness of string with the corresponding values in other string.
# What concepts or learnings were you able to solidify in this challenge?
# hmm the database conversion and iterating over.
