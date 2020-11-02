# https://repl.it/@jkeohan/Ruby-intro-to-arrays-objects-seri831#main.rb

# ARRAYS
my_array = ['a','b','c']
p my_array

# return element at a position
p my_array[0]

# set a value at a position 
my_array[2] = 'z'
p my_array

# developers = ['Caleb', 'Joel', 'Julia', 'Adam']

# using string quoting
developers = %w[Caleb Joel Julia Adam]
# p developers

# FIRST 
# p developers.first
# LAST ELEMENT
# p developers.last
# p developers[-1]
# p developers[developers.length-1]

# SUBSET OF ELEMENTS
# 0 1 2 3 -3 -2 -1
# p developers[-3,3]
# p developers[-5]
# developers[developers.length] = 'Kira'
# p developers

# ADD ELEMENT TO ARRAY
# << is a shovel
developers << 'Kosta'
developers.push 'Rick', 'Joe'
developers << 'Jonathan' << 'Peter'
developers.unshift 'Guillermo'

# REMOVE ELEMENT FROM ARRAY
# developers.pop
# # developers.shift 4
# p developers

# HASHES => Object
dict = {}

# set a new key to a value
dict['a'] = 1
# get a value we must use bracket notation
p dict['a']
# dot notation is not supported
# p dict.a

p dict # {"a"=>1}

# within dictionary we can use the hash rocket
nums1 = {
  "odds"  => [1, 3, 5],
  "evens" => [2, 4, 6]
}
p nums1
# {"odds"=>[1, 3, 5], "evens"=>[2, 4, 6]}

# SYMBOLS
nums = {
  odds: [1, 3, 5],
  evens: [2, 4, 6]
}

# nums[:odds] = [1, 3, 5]

p nums
# {:odds=>[1, 3, 5], :evens=>[2, 4, 6]}
p nums[:odds]
p nums[:evens]

arr = [:a, 'b', 'b', :a]

# compares the object_id of both elements
p 'bob'.equal? 'bob' # false
# compares just the values
p 'bob' == 'bob' # true

# symbols have the same object_id
p :bob.equal? :bob # true

p nums.keys

arr = [].push 4, 'hi', first_name: 'sam', last_name: 'allen'
p arr
