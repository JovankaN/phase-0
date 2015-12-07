# Leap Years

# I worked on this challenge [by myself, with: Chris Pine lol:)].


# Your Solution Below

def leap_year?(year)
year % 4 ==0 && (year %100 !=0 || year % 400 ==0)

end