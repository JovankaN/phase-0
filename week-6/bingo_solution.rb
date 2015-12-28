# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [over 12] hours on this challenge and i never finished it myself, had help from a friend ...:(!


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#Define a method call, inside it, create a hash that takes strings  "B", "I", "N", "G", "O" as a key and the corresponding letter index number as values.
#create instance var. letter, set it equal to  a randomly selected key, and another var. number where you set it equal to  a randomly selected value (1-100)
#Print the joined  instance variables .
# Check the called column for the number called.
# Define method check , iterate through the subarrays if the integer and the value are equals to the number .
# If the number is in the column, replace with an 'x'
# iterate through the key and print the key

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
# Iterate through the subarray in the array and print a string for each subarray in the array...


# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @h = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    @letter = @h.keys.sample
    @n = rand(1..100).to_s
    p "The number is #{@letter}#{@n}"
  end

  def check
    for i in 0..4 do
      if @bingo_board[i][@h.values_at(@letter).fetch(0)] == @n.to_i

        @bingo_board[i][@h.values_at(@letter).fetch(0)] = "x"

        @h.each_key do |key|
          print "#{key} "
        end

        puts
        for i in 0..4 do
          print "#{@bingo_board[i]}"
        end
      end
    end
  end

end



# Refactored Solution

# Took me over two days and i wasn't able to even come up with the solution myself so i asked for help to come up with this...however i run out of patience to look for some more built_in methods ...but i'll get there :))!

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection

# How difficult was pseudocoding this challenge?
# For me very...i am not good at it , maybe should take so classes to teach me to better pseudocode , and i know is very helpful so i just need to start thinking better
 # What do you think of your pseudocoding style?
 # What i do i am trying to code before i pseudocode ,  then always come back to it and fill out what i did and i know it should be vise versa, so if you know any more resources to help me get better at this i will be very happy
# What are the benefits of using a class for this challenge?
#instance variables ...:)) we can pass them between methods.
# How can you access coordinates in a nested array?
# You can access them by calling the multiple indexes on the array or you can use ".fetch()" or .at() on array calls
# What methods did you use to access and modify the array?
# we used ".simple" method to get a random number from the array,".keys" to return a new array populated with the keys from the hash , "value_at" returns an array containing the values,".fetch(index)" returns element at position index,

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# fetch(index) Tries to return the element at position index.
# http://docs.ruby-lang.org/en/2.0.0/Array.html#method-i-fetch

# How did you determine what should be an instance variable versus a local variable?
# I didin't use any local variables , but i figured since we'll have more methods defined it is better to use instance variable since we can pass them between those methods.
# What do you feel is most improved in your refactored solution?
# Ahh ..don't get me started :))..i didn't refactored my solution , i spent a lot of time trying to figure out the initial solution...so i kinda gave up.