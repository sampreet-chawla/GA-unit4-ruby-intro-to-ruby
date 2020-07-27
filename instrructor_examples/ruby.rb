# single comment

# puts is equivalent to console.log()
# puts('hello world')
# parens are optional
# puts 'look...no parens'
# p 'im a string'

# define a variable using snake_case
# my_first_variable = 'hello world'
# p my_first_variable

# cannot just create a variable without assigning a value
# counter
# ruby.rb:13:in `<main>': undefined local variable or method `counter' for main:Object (NameError)

# counter = 0
# p 0

# name, grade, gpa = 'Suresh', 89, 3.6
# p name, grade, gpa

# p 1.class
# p 1.0.class

# p 2.next
# p 2.pred
# p 2.lcm(3)

# puts 2.methods

# counter = 0
# counter += 1
# p counter

# single line
=begin
  multiline comment
=end

# Strings

# puts 'it\'s a great day'
# puts "it\'s a great day"

# str = "hello \nworld"
# puts str

#String Methods
# puts "Madeline".methods

s = 'hello'
# puts s.length
# puts s.size
# puts s.bytesize

# when you see a ? that indicates that the methods returns true/false
# a methods that returns true/false = predicate
# puts s.empty?
# puts "".empty?

s = "hello"
# p s.index('l')
# p s.index('l', 3)
# p s.rindex('l')

# p s.start_with? 'hell'
# p s.end_with? 'bells'

# p s.include?('ll')
# regular expressions are used for pattern matching
# p s.match(/[aeiou]/) {|m| m.to_s}

# p "this is it".split

# p "banana".partition('an')
# p "banana".rpartition('an')
# p "a123b".partition(/\d+/)

# p s.concat(' world')
# p s.insert(5, " there")
# p s.slice(0,5)
# p s
# # ! is used as a mutator and will, in this instance, remove "there"
# p s.slice!(5,6)
# p s

# p s.upcase!
# p s

# String Interpolation
# works only with double quotes
# p "I have #{13 * 4} cards"
# a = 'hello'
# b = 'world'
# p "#{a} #{b}"

# Concatenation
# p 'foo' + 2
# p 'foo' + 2.to_s

# p 21.50.to_i
# p 21.to_f

# p 21.50.ceil
# p 21.50.floor

# p 1 == 1
# p 1 == '1'

# p !!true

# Flow Control
# name = 'Joe'
# if name == 'Jason'
#     p "It's Jason"
# elsif name == "Laurne"
#     p "It's Lauren"
# else 
#     p "Not Jason or Lauren"
# end

# age = 100
# p 'you are wise' if age >= 100

# p 'you are wise' unless age < 100

# Ternary Operator
# num = 10
# p num.even? ? "#{num} is even" : "#{num is odd}"

# Loops
# i = 3
# while i < 10 do 
#     p i += 1
# end

# 8.upto(10) do |i|
#     p i
# end

# 'hel'.length.times do |i|
#     p i
# end

# Methods..are really JS functions
# def square num1,num2 
#     p num1, num2
# end

# square 10,20

def square? (num)
    # there is an implicit return
    Math.sqrt(num).to_i**2 == num
end

p square? 4