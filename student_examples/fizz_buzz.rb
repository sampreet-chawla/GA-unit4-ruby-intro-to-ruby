# Solution also at https://repl.it/@SampreetChawla/Ruby-FizzBuzz-Starter#main.rb

=begin FIZZBUZZ
Using a loop, boolean logic, and if/else statements work
out the logic for fizzbuzz.  

NOTE: look up the % modulus operator as it is needed as well

Here are the requirements:
- Initiate the loop 35 times
- In the loop, every time a number is divisible by **3**, 
  instead of logging the number itself, the word "fizz" should appear.
- If the number is divisible by **5**, the word "buzz" should be logged.
- If the number is divisible by both **3** and **5**, then the word "fizzbuzz" should be logged.

Below should be the console.log output:

fizzbuzz
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
16
17
fizz
19
buzz
fizz
22
23
fizz
buzz
26
fizz
28
29
fizzbuzz
31
32
fizz
34
=end

# Using UPTO AND IF-ELSIF-ELSE-END
def fizz_buzz max_value
  0.upto(max_value - 1) do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "fizzbuzz"
    elsif i % 3 == 0
      puts "fizz"
    elsif i % 5 == 0
     puts "buzz"
    else
      puts i
    end
  end
end

# Using UPTO AND SWITCH-WHEN
def fizz_buzz2 max_value
   0.upto(max_value - 1) do |i|
    case true
    when i % 3 == 0 && i % 5 == 0
      puts "fizzbuzz"
    when i % 3 == 0
      puts "fizz"
    when i % 5 == 0
     puts "buzz"
    else
      puts i
    end
  end
end

# fizz_buzz2 35


# Using FOR-IN AND IF-ELSIF
def fizz_buzz3 max_value
 for i in 0..35
    if i % 3 == 0 && i % 5 == 0
      puts "fizzbuzz"
    elsif i % 3 == 0
      puts "fizz"
    elsif i % 5 == 0
     puts "buzz"
    else
      puts i
    end
  end
end

# fizz_buzz3 35

# Using WHILE AND IFs - Different approach
 def fizz_buzz4 (max_num)
  i = 0
  while i < max_num
    string = ''
      if i % 5 == 0 
        string.insert(0,'buzz')
      end
      if i % 3 == 0
        string.insert(0,'fizz')
      end
      if string == ''
        string = i
      end
      puts string
      i += 1
  end
end
fizz_buzz4(35)
