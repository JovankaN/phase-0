# Factorial

# I worked on this challenge [by myself, with: Tyler Mckenzie].
#Pseudocode
=begin
Method factorial:
If the input number is equal to zero return 1; if not , take the number and multiply it by the next lower number iterated.
=end



# Your Solution Below
def factorial(number)
  # Your code goes here
  if number == 0
    1
  else
    number * factorial(number-1)
  end
end
p factorial(5)
