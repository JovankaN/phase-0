#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

 attr_reader :name

def initialize
  @name = "Jovanka"
end
end


class Greetings
def initialize
  @namedata = NameData.new
end

def hello
  puts  "Hello #{@namedata.name}! How wonderful to see you today."
end
end

greet = Greetings.new
p greet.hello


# Reflection

# Release 1:

# What are these methods doing?
# We initialized the class Profile with the characteristics (was a little confused why there were not parameters , oh well i gues its the same, but i never saw it this way), then we defined a print_info method that prints out the instance variables , than we created a getter and setter methods, the getter methods hands us the value of the instance variables , where we used the setter methods to change a value of the instance variables.
# How are they modifying or returning the value of instance variables?
# With the setter methods , they are allowing us to change the value of the instance variable directlly.

# Release 2:

#What changed between the last release and this release?
# We replaced the getter method what_is_age with the attr_reader :age, which is the getter method
# What was replaced?
#The what_is_age method with the attr_reader instead for a much cleaner and readable code.
# Is this code simpler than the last?
# I belive so still getting used to it.

# Release 3:

# What changed between the last release and this release?
# We replaced the setter method change_my_age with the attr_writer :age
# What was replaced?
# the entire change_my_age method with the attr_writer :age,
# Is this code simpler than the last?
# I belive so still getting used to it.

#  Reflect 6 :

# What is a reader method? Attribute of an object that allows its value to be viewed and called outside of the class, and i think it is immutable, and i believe its equivalent to the get method.
# What is a writer method?
# Attribute of an object that allows its value to be changed from outside of the class, i read that it cannot be viewed, and i believe its equivalent to the set method.
# What do the attr methods do for you?
#   Definitely makes the code simpler and easier to read.
# Should you always use an accessor to cover your bases? Why or why not?
# I wouldn't say always, maybe we wouldn't like our instance variables written over or read  outside the class...
# What is confusing to you about these methods?
# I was confused a bit how to call the class inside the other class , and which should be initialized and how , and at the end i was a little confused why we had to call .name on my @namedata, took me some time to realize what i need to do to make it work...still not clear how that works .