# https://repl.it/@jkeohan/intro-to-ruby-seir831#main.rb

# single line comment

=begin
 this is a mullit line comment
 another comment
 more comments
=end

# puts is our console loggging tool
# puts('hello world')

# we don't need the parens
# puts 'hello world'

# additional ways to console log
# print 'hello world'
# p 'hello world'

# VARIABLES
welcome = 'welcome to ruby' # => 
one = 1 # => Integer
price = 10.25 # => Float

# snake_case uses underscores
my_first_var = 'hello world'
# puts my_first_var

# Constants
FOO_CONSTANT = 'foo'
# puts FOO_CONSTANT
PI = 3.1415

# Variables must be instantiated with a value
# counter 
# Traceback (most recent call last):
# main.rb:33:in `<main>': undefined local variable or method `counter' for main:Object (NameError)

# Parallel Variable Assignments
name, grade, gpa = 'Suresh', 89, 3.6
# puts name, grade, gpa

# Numbers
# puts 1.class # => Integer
# puts 1.0.class # => Float

# Number helper methods
# puts 2.next
# puts 2.pred
# puts 2.lcm(3)
# puts 2.gcd(3)

# Methods
# puts 2.methods

# Semicolons
name = 'Anthony'; height_in_feet = 6

# OPERATORS
counter = 0
counter += 1
# puts counter
# print "counter equals ", counter

# STRINGS
# puts 'it\'s a great day'

# str = 'hello \n world'
# puts str

str = "hello \n world"
# puts str

# STRING METHODS

# puts 'kenny'.methods.sort
# length is a method not a property
# puts 'kenny'.length
# puts 'kenny'.size

# PREDICATE METHODS = ?
# they return true/false
# puts str.empty?
# puts ''.empty?

# str_split = 'this is it'.split
# puts str_split

hello = 'hello'
# puts hello.concat(' world')

# puts hello.slice(0,3) # hel
# MUTATOR METHOD
# ! is a mutator method
# puts hello.slice!(0,3) # hel
# puts hello # hello

# puts hello.methods.sort

# puts hello.upcase!
# puts hello

# STRING INTERPOLATION
# requires double quotes
cards = 13*4
# puts "I have #{cards} cards"

# to_ is a converion method
# puts 'foo' + 2.to_s
# puts '2'.to_i + 2

# BOOLEANS
# puts 1 == 1
# puts 1 == '1'
# puts [1,2] == [1,2]
# puts [1,2] == [2,1]

# FLOW CONTROL

# CONDITIONALS
# if/elsif/else/end
# parens not required
# WE DON"T USE CURLYS FOR IF/ELSE
# if(name == 'Anthony')
#   puts 'Its Anthony'
# elsif name == 'Lauren'
#   puts 'Its Lauren'
# else
#   puts 'Not Jason or Lauren'
# end # end is considered the close curly in JS

# TERNARY OPERATORS
num = 3
# puts num.even? ? "#{num} is even" : "#{num} is odd"

# double quotes use for:
# - string interpolation
# - escape characters like \n \s \t


# LOOPS
# while...(for loops but we don't use them)
# do...end is a block of code
i = 3
# Starts at the value you define
# while i < 10 do
#   puts i += 1
# end

# Starts at the value you define
# 5.upto(10) do |i| 
#   puts i
# end

# Starts from 0 and goes up from there
# 3.times do |i|
#   puts i
# end

# METHODS
# a method is really a function in JS
def method_name param
  # run some code
end

# predicate method
def method_name? param
  # run some code
end

# ??? method
def method_name! param
  # run some code
  return param
end

method_name! variable

# puts 'string'.methods.sort

# .equal?

a = 'xyz'
puts a.object_id
b = 'xyz'
puts b.object_id

# == compares the value only
puts a == b # => true
# .equal? => are they the same objects
puts a.equal? b # => false

puts a.equal? a


