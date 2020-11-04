# Also available at https://repl.it/@SampreetChawla/ReverseString-And-isPalindromemd#main.rb
# REVERSE A STRING OF TEXT

# Write a method called reverse_string that takes in a string and prints the string in reversed order

# Methods in ruby are written as follows: 
#  - def is used instead of function
#  - there are no curly braces
#  - the method is closed using the end keyword
#  - a single parameter can be defined using a space

#def method_name param_name
def rev_str str
  rev_value = ''
  char_arr = str.split('')
  i = char_arr.length - 1
  while i >= 0 do 
    rev_value += char_arr[i]   
    i -= 1 
  end
  return rev_value
end
puts rev_str "cat"

# Experiment with all of the following looping constructs

# .times
def rev_str_times str
  rev_value = ''
  str.length.times do |i|  
   rev_value = str[i] + rev_value
  end 
  return rev_value
end
puts rev_str_times "cat"

# .upto 

def rev_str_upto str
  rev_value = ''
  0.upto(str.length-1) do |i|  
   rev_value = str[i] + rev_value
   # puts "#{i}, #{str[i]}, #{rev_value}"
  end 
  return rev_value
end
puts rev_str_upto "cat"

# .downto
def rev_str_downto str
  rev_value = ''
  (str.length-1).downto(0) do |i|  
   rev_value = rev_value + str[i]
   # puts "#{i}, #{str[i]}, #{rev_value}"
  end 
  return rev_value
end
puts rev_str_downto "cat"

# Bonus Method
# .each (array specific and might require some research) 
def rev_str_each str
  rev_value = ''
  char_arr = str.split('')
  char_arr.each do |ch|
    rev_value = ch + rev_value
  end
  return rev_value
end
puts rev_str_each "cat"

def rev_str_each2 str
  rev_value = []
  char_arr = str.split('')
  char_arr.each do |ch|
   rev_value.unshift(ch)
  end
  return rev_value.join
end
puts rev_str_each2 "cat"

# The following variables can be used for each solution
word = 'cat'
rev_word = ''


# .times

# .upto

# .downto


# Bonus Method
# .each


# BONUS: Write a method called is_palindrome that will return true if a given input is a palindrome and false if it's not.


# Input: 'radar'
# Output: true

# Input: 'ruby'
# Output: false

# Input: 'race car' or 'Race car' 
# Output: true

# MUST WRITE PSEUDOCODE FIRST
# LET STR = INPUT STRING
# USING WHILE LOOP, CHECK IF FIRST CHAR (INDEX1 = 1) IS EQUAL TO LAST CHAR (INDEX2 = STR.LEGNTH)
# CHECK IF SECOND CHAR IS EQUAL TO SECOND LAST CHAR
# AT ANY POINT, IF CHAR AT INDEX1 IS NOT EQUAL TO CHAR AT INDEX 2, RETURN FALSE
# KEEP CHECKING TILL CHARS ARE EQUAL AND IF THE INDEX 1 = INDEX 2, RETURN true
def is_palindrome? word
  word = word.gsub(/\s+/, "")
  index1 = 0
  index2 = word.length - 1
  while index1 != index2 do 
     if(word[index1].upcase != word[index2].upcase) 
       return false
     end
     index1 = index1.next # index1
     index2 = index2.pred
  end
  return true;
end

puts is_palindrome?('radar')
puts is_palindrome?('ruby')
puts is_palindrome?('Race car') # Test successful

def is_palindrome2? word
  return (word == word.reverse)
end

puts is_palindrome2?('radar')
puts is_palindrome2?('ruby')
puts is_palindrome2?('Race car') # Fails here for is_palindrome2?