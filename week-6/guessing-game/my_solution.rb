# Build a simple guessing game


# I worked on this challenge [by myself, with: myself ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:integer
# Output:

# Steps:
# define method guess that takes an integer
# guess should return the symbol :high if the integer is larger than the answer,;
#   the symbol :correct if the integer is equal to the answer,; and
#   the symbol :low if the integer is lower than the answer;
# the solved? method, return true if the integer is the same as the answer, otherwise return false

# Initial Solution

class GuessingGame
  def initialize(answer)
  @answer = answer
  end

  def guess(integer)
    @integer = integer
  if integer > @answer
    return  :high
  elsif integer < @answer
    return :low
  else integer = @answer
    return :correct
  end
  end

  def solved?
  if @integer == @answer
    return true
  else
    return false
  end
end
end

game = GuessingGame.new(10)
p game.guess(10)
p game.solved?
# Refactored Solution


class GuessingGame

  def initialize(answer)
  @answer = answer
  end

 def guess(integer)
 @integer = integer
 return :high if @integer > @answer
 return :low if @integer < @answer
 return :correct if @integer == @answer
 end

 def solved?
  @integer == @answer
 end

end


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Wanna say that instance variables describe the object and the instance methods represent the behavior of that object , what that object can do with a given function, like verbs in english, they describe what the object is capable of doing.
# When should you use instance variables? What do they do for you?
# We use them whenever we want to pass information between methods, we can access them outside of the method that they were created in, pretty much can be shared across the entire object.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Finally i didn't struggle with flow control , maybe because it was simple and i used if  statement since i understand them the most.Flow controll can be implemented with loops, conditional statements, branching etc.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#Symbols are immutable and unique, whereas strings are mutable objects,strings  can be changed after assignment while immutable objects the symbols can only be overwritten.