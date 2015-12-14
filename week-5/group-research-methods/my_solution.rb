# Research Methods

# I spent [3] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
 source.map! do |i| i.is_a?(Integer) ? i + 1
  : i
end
end



def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key,value|
  source [key] = value + 2
  end
end

# Identify and describe the Ruby method(s) you implemented.
#In the First method we'll Go through the each element in the array  with the .map! which I used. Map! is the destructive form of #map, and map! transforms the original array,  into a new  transformed array, and in my case adds  one to any integer that it'll find in the array, i used the method is_a? to define the element  "i" in my case, and that is the integer that needed to be changed every time we add 1.
#In The second we  use the .each method where we go through the each pair in the hash and add +2 to the value.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#It helped me a lot to repeat what i already knew and maybe look for another possible way.
#And also telling was much easier then trying to use it and transform it into a code.


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
