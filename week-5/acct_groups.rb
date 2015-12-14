#Pseudocode
# Make an array with the names of the people that we want to put them in a group.
# Make a method that takes the  an argument.
# Create a new array
# put the names from the  array into groups of 4 and push them in the new array.
# DEfine another method to arrange the groups so for every group to consist of at least 3 people in a group, prevent the group size to be less than 3
# Output :Arrays of names in groups of 4 no less then 3


array = ["Alex Forger","Alexander Nelson", "Karen Ball","Christopher Bovio","Gino Paup Capio", "Jonathan Chin","Claire Samuels","Ray Curran","David Louie","David Spivey","Max Davis", "Devin Mandelbaum","Afron Downey","Jordan Fox","Rebecca Gahart","Gary Wong","Hodges Glenn","Everett Golden","Christopher Graf","Alana Hanson","LeeAnne Hawley","Sabri Helal","Thomas Huang","Jeff Schneider","Jillian Dunleavy", "Kevin Huang","Khamla Phimmachak","KT Khoo","Andrew S Kim","Joseph Kim","Michael Kimek","Nathan Knockeart","Brigitte Kozena", "Donald Lang","Donald Lang","Tiffany Larson","Steven King"]

def acct_groups(array)
groups = Array.new
array.each_slice(4) {|p| groups << p}
return groups
end
p acct_groups(array)



def equal_array(acct_groups)
if acct_groups[-1].length <= 2
    acct_groups[-2].pop(2).each {|p| acct_groups[-1]<< p}
  end
  return acct_groups


end

p  equal_array(acct_groups(array))
# Refactor
# I think i did it as much as could.

# Reflect
#  What was the most interesting and most difficult part of this challenge? The most difficult thing was to prevent the array to be less then 3, as i had the last array to be only one person. The fun part was how i was pseudocoding....it helped to a certain level but i really need to work on that more and be able to break the problem into a many steps maybe that will help with my research better .
# Do you feel you are improving in your ability to write pseudocode and break the problem down?A little...still need to work on that
# Was your approach for automating this task a good solution? What could have made it even better?It never quite made it to the point i wished, i had to do a lot of research to be able to make my solution work...which kinda made me a little worried but i tried enough with my aproach and didn't make it, i had to look for help :)))
# What data structure did you decide to store the accountability groups in and why?
# Decide to go with arrays as i didn't see the reason why to go with hashes but now that i am thinking if i named the keys lets say Group1,2,3 ...i could have done it but it's already complicated enought as it is so ...
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I think i simplified the initial solution already so i didn't apply any refactored solution....