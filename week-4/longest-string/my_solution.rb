# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  if list_of_words == ""
    return nil
  end
  longest_word = list_of_words[0]
  for word in list_of_words
    if word.length > longest_word.length
      longest_word = word
    end
  end
  return longest_word
end