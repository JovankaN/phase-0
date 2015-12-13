 # Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Tyler Mckenzie].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
#Pseudocode
=begin
 Method total
we create new variable call 'sum' that we assign to zero
call the 'array.each'then we add the 'sum'to each part of the array and display it to the terminal

=end
# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total(array)
 sum =0
array.each {|a| sum += a}
sum
end
p total([1,2,3,4,5,6,7])

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!





# Input:
# Output:

# Steps to solve the problem.

# 5. sentence_maker initial solution

def sentence_maker(array)
    array[0] = array[0].capitalize
    b = ""
    array.each { |a| b += a.to_s }
    b = array.join(" ") + "."
end
print sentence_maker(["all", "my", "socks", "are", "dirty"])


# 6. sentence_maker refactored solution