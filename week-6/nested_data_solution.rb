# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# =====================================




# Hole 2
# Target element: "congrats!"

   hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

   nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

 number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |number|
  if number.kind_of?(Array)
    number.map! do |number2|
      if number2.kind_of?(Integer)
        number2 += 5
      end
    end
  elsif number.kind_of?(Integer)
    number += 5
  end
end

p number_array


# Bonus:

   startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def startupify(name)
  name.concat('ly')
end

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |item1|
  if item1.kind_of?(String)
    item1 = startupify(item1)
  elsif item1.kind_of?(Array)
    item1.each do |item2|
      if item2.kind_of?(String)
        item2 = startupify(item2)
      elsif item2.kind_of?(Array)
        item2.each do |item3|
          if item3.kind_of?(String)
            item3 = startupify(item3)
          end
        end
      end
    end
  end
end

p startup_names


# Refactor:


# RELEASE 3: ITERATE OVER NESTED STRUCTURES

 number_array = [5, [10, 15], [20,25,30], 35]

number_array.flatten.each {|n| p n +5}

# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p startup_names.flatten.each{|str| str.concat("ly")}



# Reflection:

# What are some general rules you can apply to nested arrays?
#depends on your callout , in this example: hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}} to access "congarts" you'll have to deeper in the nested array you would say: p hash[:outer][:inner]["almost"][3].
# What are some ways you can iterate over nested arrays?
#Well we used the same methods that we iterate over arrays,but for the nested ones first we had to identify what was in those arrays and then iterate over.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# yup we used "kind_of" a lot to identify what was inside the nested arrays so it means : Returns true if class is the class of object, or if class is one of the superclasses of object or modules included in object, and i am still trying to figure out the difference between is_a? and kind_of?. And when we were searching for Refactoring , searching for solution we found a ".flatten" which returns a new array that is for every element that is an array, extract its elements into the new array , pretty cool !