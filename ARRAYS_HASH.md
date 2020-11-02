[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Arrays and Hashes in Ruby

<br>

## Collections

### Arrays


In Ruby, `Arrays are ordered, integer-indexed collections of any object.` From
that, [Ruby Arrays](https://ruby-doc.org/core-2.6.3/Array.html) seem a lot like
JavaScript Arrays.


```ruby
# create an array
my_array = ["a","b","c"]
=> ["a","b","c"]
# return the first element in the array
my_array[0]
=> "a"
# set the value at a position
my_array[2] = "z"
=> "z"

my_array
=> ["a","b","z"]
```



## Creating a Ruby Array

As with JavaScript, Ruby Arrays can be created using literals (technically, a
constructor method on class Array)

### Demo

```rb
# literal syntax:
developers = []
# => []
```

With the literal syntax, we can create an array with values we wish

```rb
not_the_same_type = [[], 'one', 2.0, 3]
# => [[], "one", 2.0, 3]
```

If all of the entries are strings, Ruby provides a (Perl inspired) string
[quoting](https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#The_.25_Notation)
mechanism to create an Array:

```rb
developers = ['Caleb', 'Joel', 'Julia', 'Adam']
# => ["Caleb", "Joel", "Julia", "Adam"]

# string quoting
developers = %w[Caleb Joel Julia Adam]
# => ["Caleb", "Joel", "Julia", "Adam"]
```

## Assigning and accessing elements in a Ruby Array

### Demo

Let's explore accessing elements in an array and assigning elements at a
specific index in an array:

- [`Array#[]`](https://ruby-doc.org/core-2.6.3/Array.html#method-i-5B-5D)
  (Element Reference)
- [`Array#[]=`](https://ruby-doc.org/core-2.6.3/Array.html#method-i-5B-5D-3D)
  (Element Assignment)

```rb
developers[0] # Accessing first element by at index 
# => "Caleb"

developers.first # Accessing the first element using method
# => "Caleb"

developers[-1] # Accessing the last element using -1
# => "Adam"

developers.last # Accessing the last element using method
# => "Adam"

developers[developers.length-1] # And yet again the last element
# => "Adam"

developers[-5] #No element exists at that position
# => nil

developers[-3, 3]
# => ["Joel", "Julia", "Adam"]
# *Note* the optional 2nd argument. What do the docs say about this?
# https://ruby-doc.org/core-2.5.0/Array.html#method-i-5B-5D

developers[-2, 2]
# => ["Julia", "Adam"]

developers[-5] = 'Kira'
# IndexError: index -5 too small for array; minimum: -4

developers[developers.length] = 'Kira'
# => "Kira"
# To what index are we assigning?

```

We can also concatenate arrays

```ruby
[1, 2, 3] + [4, 5] # => [1, 2, 3, 4, 5]
# (this is a new array. neither is mutated)
```

## Adding and Removing Elements from Both ends of an Array

### Code Along: Let's Explore

- [Array#push](https://ruby-doc.org/core-2.6.3/Array.html#method-i-push):  Append (put element at end), also available through the `shovel`
_alias_, [<<](https://ruby-doc.org/core-2.6.3/Array.html#method-i-3C-3C)
- [Array#pop](https://ruby-doc.org/core-2.6.3/Array.html#method-i-pop): Remove from end of array
- [Array#unshift](https://ruby-doc.org/core-2.6.3/Array.html#method-i-unshift): Prepend (put element at beginning)
- [Array#shift](https://ruby-doc.org/core-2.6.3/Array.html#method-i-shift): Remove from beginning

```rb
developers << 'Kosta'
# => ['Caleb', 'Joel', 'Julia', 'Adam', 'Kira', 'Kosta']

developers.push 'Rick'
# => ['Caleb', 'Joel', 'Julia', 'Adam', 'Kira', 'Kosta', 'Rick']

developers << 'Johnathan' << 'Peter'
# => ['Caleb',
#   'Joel',
#   'Julia',
#   'Adam',
#   'Kira',
#   'Kosta',
#   'Rick',
#   'Johnathan',
#   'Peter']

developers.pop
# 'Peter'

developers.shift 4
# => ['Caleb', 'Joel', 'Julia', 'Adam']

developers
# => ['Kira', 'Kosta', 'Rick', 'Johnathan', 'Peter']

developers.unshift 'Guillermo'
# => ['Guillermo', 'Kira', 'Kosta', 'Rick', 'Johnathan', 'Peter']
```

<br>

### Hashes

In Ruby, `A Hash is a dictionary-like collection of unique keys and their
values`. In sharp contrast to JavaScript, [Ruby Hashes](http://ruby-doc.org/core-2.5.0/Hash.html)
are not the most general object in the language, but are instances of a
specialized class for key/value storage.


A Ruby hash acts somewhat like a dictionary (or object) in JavaScript, in
that it consists of pairs of keys and values.

```ruby

dict = {}
=> {}

dict["a"] = 1
=> 1

dict["a"]
=> 1
```

However, there are a couple of important differences. 

For instance, Ruby
hashes do not allow you to access their keys through a dot notation; you
*must* use square braces. When you use a `.`, ruby thinks you are calling a method on an object.

We can also define a hash with keys and values already in it using a `=>` hash rocket. 

```ruby
nums = {
  "odds"  => [1, 3, 5],
  "evens" => [2, 4, 6]
}
```

In the example above, our hash has the keys `"odds"` and `"evens"` in quotes,
which map to values `[1, 3, 5]` and `[2, 4, 6]` respectively. We use the
hash rocket symbol here (or Fat Arrow) to link our keys to their values.

#### Symbols
Ruby has another way to define keys and values in hash:

```ruby
nums = {
  "odds": [1, 3, 5],
  "evens": [2, 4, 6]
}
```
**One gotcha with the above** is that the above syntax turns the keys into _symbols_, so you will have to access your keys using `nums[:odds]`, even though you typed the keys as strings! Symbols are a special kind of String that start with a colon (`:`), and Ruby often uses these internally.

So, the above syntax is equivalent to a third way you could define key value pairs within a hash:

```ruby
nums = {
  :odds => [1, 3, 5],
  :evens => [2, 4, 6]
}
```

Whenever you need to see what the keys and values are in your hash, just print it out to the console using `p nums` within your code.

When in doubt, log it out!

## Ruby Symbols

A [Symbol](http://ruby-doc.org/core-2.5.0/Symbol.html) is a sequence of
characters that is stored, at most, once in any instance of the Ruby interpreter.  JavaScript also introduced `Symbols` in ES6. 

In Ruby, strings are compared a character at a time, but symbols are compared
by `object_id`.  This makes comparing symbols fast and therefore much more
performant than strings when used as keys in a `Hash`.

### Demo: Test Equivalency

Let's quickly look at how Ruby compares Strings vs how it compares Symbols.

```rb
# check to see if both bobs are stored at the same location in memory
'bob'.equal? 'bob'
# => false
# comparing just the values
'bob' == 'bob'
# => true

# check to see if both bobs are stored at the same location in memory
'bob'.object_id == 'bob'.object_id
# => false

# check to see if both bobs are stored at the same location in memory
:bob.equal? :bob
# => true

# check to see if both symbols are the same
:bob == :bob
# => true

# check to see if both bobs are stored at the same location in memory
:bob.object_id == :bob.object_id
# => true
```

Remember that everything is an object in Ruby, so everything has its own
`object_id`. Each string of `'bob'` gets a different `object_id`, but the
symbol `:bob` will always have the same `object_id`.

## Creating Ruby Hashes

Let's look at different ways to create a Hash and then add some key value pairs
to it.

### Demo: Hash Creation

```rb
apartment = {}
# => {}

apartment[:address]
# => ""

apartment[:address] = { street: '255 Long Road', city: 'Awesomeville' }
# => {:street=>"255 Long Road", :city=>"Awesomeville"}

apartment[:bedrooms] = 3
# => 3

priced_apartment = apartment.merge(rent: 1000)
# => {:address=>{:street=>"255 Long Road", :city=>"Awesomeville"}, :bedrooms=>3, :rent=>1000}
```


### Lab: Hash Literal

In `ruby.rb`, assign a hash using the literal syntax to the
variable `my_pet`. Then, assign the keys `:name` and `:age`,
each with a type-appropriate value of your choice. 

## Assigning and Accessing Elements in a Ruby Hash

### Demo: Accessing, Modifying, and Deleting

```rb
priced_apartment[:occupants] = []
# => []

lee = { name: 'Lee', age: 24, dog: 'Fluffy' }
# => {:name=>"Lee", :age=>24, :dog=>"Fluffy"}

adrian = { name: 'Adrian', age: 25, cat: 'Scratchy' }
# => {:name=>"Adrian", :age=>25, :cat=>"Scratchy"}

priced_apartment[:occupants].push(lee, adrian)
# => [{:name=>"Lee", :age=>24, :dog=>"Fluffy"},
# {:name=>"Adrian", :age=>25, :cat=>"Scratchy"}]

priced_apartment[:occupants][1].delete(:cat)
# => "Scratchy"

priced_apartment[:rent] += 150
# => 1150
```

### Exercise: Appending

In `my_pet` create a `:fav_food` key and set it's value to an empty array. Add a few fav foods to the array as objects that include both `:name` and `:cost` keys.

### Hash Keys

To get an Array of the keys that have been set in a hash, use `Hash#keys`.

```rb
priced_apartment.keys
# => [:address, :bedrooms, :occupants, :rent]
```

### Hash as Final Argument to Method

If the last argument to a method is a hash, you may omit the curly braces.

```rb
[].push 4, 'hi', first_name: 'sam', last_name: 'allen'
# => [4, "hi", {:first_name=>"sam", :last_name=>"allen"}]
```

### Lab: FizzBuzz with Hashes

Time to recreate the classic FizzBuzz problem with hashes!

Inside `fizzbuzz.rb`, create a hash containing keys `"fizz"`, `"buzz"`,
`"fizzbuzz"`, and `"other"`, each with arrays as values. As you iterate through
all the numbers from 1 to `max_num`, add each number to one of the arrays
mentioned above; numbers divisible by 3 *only* should go into the `"fizz"`
array, numbers divisible by 5 *only* should go into the ``"buzz"`` array,
numbers divisible by both should go into the `"fizzbuzz"` array, and numbers
divisible by neither should go into the `"other"` array. Finally, once you're
done, return the hash as the result of `fizzbuzz`.

Run your code from the console using `ruby fizzbuzz.rb`.

I should look like the following:

```ruby
{:fizzbuzz=>[15], :fizz=>[3, 6, 9, 12], :buzz=>[5, 10], :other=>[1, 2, 4, 7, 8, 11, 13, 14, 16]}
```

<br>
<br>
<hr>


## Additional Resources

- [Links to a variety of offical language and api documentation](https://www.ruby-lang.org/en/documentation/)
- [why's (poignant) Guide to Ruby](http://mislav.uniqpath.com/poignant-guide/)
- [Ruby — Basic Data Types](https://blog.botreetechnologies.com/ruby-basic-data-types-12d63251e33c)
- [Variable References and Mutability of Ruby Objects](https://launchschool.com/blog/references-and-mutability-in-ruby)
- [Object Passing in Ruby - Pass by Reference or Pass by Value](https://launchschool.com/blog/object-passing-in-ruby)
- [What's the difference between equal?, eql?, ===, and ==?](https://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and)
- [Ruby Koans](https://rubykoans.com/)
