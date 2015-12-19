
# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with:myself and sitepoint forums :)) ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: array of strings as input.
# Output:When we call .roll method  returns a random  string from an array,
# when we call the method .sides it returns the number of sides given on initialization  , if we pass an empty array raise an ArgumentError
# Steps:


# Initial Solution


class Die
  def initialize(labels)
    @labels = labels
    if labels.length == 0
      raise ArgumentError.new("The list of labels is empty")
    end
  end

  def sides
    @sides = @labels.length
  end

  def roll
  # rand(@sides)+ 1#-this would not work ...
   @roll = @labels.sample
  end
end

die = Die.new(["נס","גדול","היה","שם"])#"a great miracle happened there"- :)) thatis what it means
p die.sides
p die.roll


# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("The list of labels is empty")if labels.length == 0
   else
    @labels = labels
  end

 def sides
  @labels.length
 end

 def roll
  @labels.sample
 end
end

die = Die.new(["נס","גדול","היה","שם"])#"a great miracle happened there"- :)) thatis what it means
p die.sides
p die.roll


# Reflection:

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# -The input was different, in this one we had an array of strings, so when we rolled it we were supposed to get a random string instead a number, had a bit of difficulties figuring that out :))
# What does this exercise teach you about making code that is easily changeable or modifiable?
# -That once your code is easy to read and understand ...everything is much better
# What new methods did you learn when working on this challenge, if any?
#- I did learn about ".sample" method which when called on an array it chooses a random element from the array. The elements are chosen by using random indices into the array in order that the elements doesn't repeat itself unless the array contains duplicate strings or numbers etc., If the array is empty the first form returns nil and the second form returns an empty array.If range is given, it will be used as the random number generator.
# What concepts about classes were you able to solidify in this challenge?
# -Instance variables , and the way i could use them in my sides method and roll method.
