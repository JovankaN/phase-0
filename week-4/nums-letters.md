   **Summarize**

**What does puts do?**
Puts stand for *"Put String"* and what it does actually it outputs to the console, whatever comes after it.

**What is an integer? What is a float?**
Both Integers and Floats are numbers. In programing language what i call whole numbers, numbers without any decimal points are *Integers* and the numbers with decimal points are called *Floats*.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**
I wanna say that when we do arithmetics with integers if the computer can't get the correct answer it always rounds down for example:

```ruby
   puts 5/2
   => 2
   ```
Whereas with floats of course it gives you the exact answer but always have to use it with decimal points for example:

 ```ruby
   puts 5.0/2.0
   => 2.5
   ```
    **Hours in a year**

 ```ruby
 puts 24*365
 => 8760
 ```
    **Minutes in a decade**

    ```ruby
    puts (60*24)*(365*10)
    => 5256000
     ```

      **Reflect**

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
I think if we want Ruby to work as a calculator to be pretty accurate then we should always use floats because it gives us the expected result, the exact result. But we can also use integers and have pretty accurate result, if for example we are dividing integers and we want for the result to be a float we simply use ".to_f"next to the numbers we are lets say dividing, and we'll have a float as a result.And if want to get a integer as a result we simply write ".to_i" next to the numbers .
**What is the difference between integers and floats?**
 **Integers** are numbers without decimal point and **Floats** are numbers with decimal points.
**What is the difference between integer and float division?**
The difference is that if we have and integer division what ruby will do is of course round down the result , and if we use floats it will give us the exact result as a calculator .
**What are strings? Why and when would you use them?**
Stings are a sequence of characters like: letters ,numbers, punctuations, symbols, etc . pretty much anything that you'll put inside a quotes (""),it can be double or single quotes, and if there is nothing inside it is still a string , it is called empty string.We use them always :)), we use them when we want to store information, and we can change that information we can add to thats information , we can do many things to that information.. kinda of how i got it.
**What are local variables? Why and when would you use them?**
Variables -Ruby identifiers , are objects that are used to store the  strings in the computer memory for later use. To store the string in your computer memory for later use you need to give the string a name, that name is what we call a *Variable*. They can be any sequence on letters and numbers, but in Ruby the first letter has to be lowercase, there are different types of variables , but  we know that they are *Local Variables*  by separating them  by underscore like : my_var .
**How was this challenge? Did you get a good review of some of the basics?**
Pretty good i think i got some of the basics .
