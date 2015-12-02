
#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.


puts "What's your name?"
name = gets.chomp
puts "What's you middle name?"
m_name = gets.chomp
puts "What's your last name?"
l_name = gets.chomp
puts " Hello  #{name} #{m_name}  #{l_name} !"


# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number

puts "What\'s your favorite number?"
favorite_number = gets.chomp
bigger_better_number =favorite_number.to_i + 1
puts bigger_better_number

# Mini challenges:
https://github.com/JovankaN/phase-0/blob/master/week-4/address/my_solution.rb 
https://github.com/JovankaN/phase-0/blob/master/week-4/math/my_solution.rb 
https://github.com/JovankaN/phase-0/blob/master/week-4/define-method/my_solution.rb 

# Reflect:

# How do you define a local variable?
# -Local variables has a name that starts either with underscores and they have to start with a lowercase letter, we define them by setting them a value, like : age= 25;
# How do you define a method?
# -Methods are defined by using the keyword "def"(define) the name of the method ,the arguments that it will take, the code block that will describe the procedure the method will do, and we always end the method with the keyword "end" will look like : def my_name(name); puts n; end

# What is the difference between a local variable and a method?
# -I think they are both object oriented and are used to store information for a later use .I read somewhere that when a local variable is referenced, it is interpreted as a call to a method that has no arguments
# How do you run a ruby program from the command line?
# - by typing ruby <filename>.rb
# How do you run an RSpec file from the command line?
# -RSpec spec<filename>
# What was confusing about this material? What made sense?
# -Not much but it took a while till i got a sence of what  variables and methods are and how they are related to each other .
