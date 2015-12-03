# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

 cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The error is occurring in the errors.rb file
# 2. What is the line number where the error occurs?
# So confusing it told me it is occuring in line 171.
# 3. What is the type of error message?
#It is the syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#It said unexpected-end-of-input , expecting keyword_end.
# 5. Where is the error in the code?
#Looked like it is in line 14, it was missing an end there .
# 6. Why did the interpreter give you this error?
# Because if we are missing something global to the  whole program it will go up to the last line and say that the problem is in that last line, since we new it can't be because it was a commented out sentence (once commented out Ruby doesn't read them it is kinda they don't exist), we had to look in our program and see where we missed an "end" keyword.

# --- error -------------------------------------------------------

south_park="cartman"

# 1. What is the line number where the error occurs?
# line 36
# 2. What is the type of error message?
# Name error
# 3. What additional information does the interpreter provide about this type of error?
#That this is a undefined local variable or method
# 4. Where is the error in the code?
# In the main Object, it cannot stand allone with no value assigned to!
# 5. Why did the interpreter give you this error?
# Ruby it can not tell what this object particullary is is it and variable or method or something else.

# --- error -------------------------------------------------------

def cartman(name)
  puts name
end

# 1. What is the line number where the error occurs?
#line 51
# 2. What is the type of error message?
#No method error
# 3. What additional information does the interpreter provide about this type of error?
#Undefined variable or method
# 4. Where is the error in the code?
#In the main Object, it cannot stand alone with no value assigned to.
# 5. Why did the interpreter give you this error?
#Ruby it can not tell what this object particullary is is it and variable or method or something else.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase='I hate Kyle'


# 1. What is the line number where the error occurs?
#line 68, from line 72 ...pretty much the error thats in line 72 affect the whole method
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#  in line 72 ,it did not expect an argument
# 5. Why did the interpreter give you this error?
#Ruby was expecting a variable on line 72 since we know that we don't need an argument since it told us that we have wrong number of arguments(1for 0),

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('I hate you lol')

# 1. What is the line number where the error occurs?
# Line 92
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#  in carman_says , i think ruby expects argument here.
# 5. Why did the interpreter give you this error?
#Because when we defined the method we used one parameter ,so when we  call the method of course we need to pass one argument.


# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit' , 'Wyoming!')

# 1. What is the line number where the error occurs?
# Line 113
# 2. What is the type of error message?
#Argument error
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of argument expected (1 for 2 )
# 4. Where is the error in the code?
# I think we are missing one more arument passed to cartmans_lie
# 5. Why did the interpreter give you this error?
# Because when we defined the method we used two parameters lie and name ,so when we  call the method of course we need to pass those two arguments one which will represent the li , and one for the name. I hope it makes sense!

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#line 127
# 2. What is the type of error message?
#Type Error
# 3. What additional information does the interpreter provide about this type of error?
#String cannot be coerced into Fixnum
# 4. Where is the error in the code?
# WE can't convert a string into number pretty much
# 5. Why did the interpreter give you this error?
#I thing because in the way we have it set it means "Respect my authoritay!" sets of number 5, so we can't say that , but if we have them 5 sets of "Respect my authoritay!" i think it will work :))!
# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0.to_f


# 1. What is the line number where the error occurs?
#Line 141
# 2. What is the type of error message?
#ZeroDivision error
# 3. What additional information does the interpreter provide about this type of error?
#That is divided by Zero
# 4. Where is the error in the code?
# I think if we made 0 into a float it will work
# 5. Why did the interpreter give you this error?
#Because dividing by zero is realy zero so we can't realy divide, but if we make it a float it doesn't mean exactly zero,but it is representative of all the numbers that would be rounded to zero.

# --- error -------------------------------------------------------

require_relative "errors.rb"

# 1. What is the line number where the error occurs?
#Line 157
# 2. What is the type of error message?
# Load error
# 3. What additional information does the interpreter provide about this type of error?
# Ruby can't load such file
# 4. Where is the error in the code?
# In the file name.
# 5. Why did the interpreter give you this error?
#Because i don't have a file named "cartmans_essay.md"  stored in the directory where i am at.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# It was the one in line 13 , the one that was missing an end keyword.
#How did you figure out what the issue with the error was?
# Because it said there is a error in the file not precislly what the error is
# Were you able to determine why each error message happened based on the code?
# I kinda got stuck  on the error in line 13 and had to do a little research , but then when i saw it i realized, but with the other once wasn't bad at all.
# When you encounter errors in your future code, what process will you follow to help you debug?
# First see in which line is happening, thats the most important i think, then see what type of error message is, is it syntacs or missing arguments, or unexpect keyword, or many many others :)).