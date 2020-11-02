# https://repl.it/@jkeohan/Ruby-Reverse-A-String-Solution-SEIR526#main.rb

# Write a method called reverse_string that takes in a string and returns
# the string in reversed order

# Experiment with all of the following looping constructs

# .times
# .upto 
# .downto
# .each (array specific)


# The following variables can be used for each solution
word = 'cat'
#

# .times

# get the length of the string
# for the number of times that is the length of the string, return the letter that is in the postiion of the string.length - i -1

def reverse_string1 string
  rev = ''
  length = string.length
  length.times do |i| 
    rev += string[string.length-i-1]
  end
 return rev
end

# reverse_string1 word

# def reverse_string(str)
#  rev_word = ''
#  i = str.length - 1
#   str.length.times do |index|
#     # .prepend adds to the begining of the
#     puts "i is #{i} and index is #{index}"
#     # rev_word.prepend(str[i])
#     # 'tac'
#    end   
#   return rev_word
# end
# puts (reverse_string('cat'))

# def reverse_str str
#   reverse = ""
#   str.length.times do |i|
#     reverse = str[i] + reverse
#   end
#   puts reverse
# end
# reverse_str 'happy'



# .upto

# for 0 up to the length of the string -1, 
# return the letter at string.length - i -1


def reverse_string2 (string)
  rev = ''
  0.upto(string.length-1) do |i| 
    rev += string[string.length-i-1]
  end
  return rev
end
# p reverse_string2(word)

# .downto

# for string.length -1 to 0
# return the letter at string[i]

def reverse_string3 (string)
  rev = ""
  length = string.length-1
  length.downto(0) do |i|
    rev += string[i]
  end
  return rev
end
# p reverse_string3(word)

# BONUS
# .each

# declare an empty array
# take the string and split it into a new array
# for each element in the array, add it to the beginning of the empty array

def reverse_string4 (string)
  rev_word = []
  new = string.split('')
  new.each do |num| 
    rev_word.unshift(num) 
  end 
  return string = rev_word.join()
end
# p reverse_string4(word)


# BONUS: Write a method called is_palindrome that will return true if a given input is a palindrome and false if it's not.

# Input: 'radar'
# Output: true

# Input: 'ruby'
# Output: false

# Input: 'race car' or 'Race car' 
# Output: true

def is_palindrome string
  rev = reverse_string1 string
  puts "this is rev #{rev}"
  return rev == string
end

p is_palindrome 'radar'
# p is_palindrome? 'radars'
