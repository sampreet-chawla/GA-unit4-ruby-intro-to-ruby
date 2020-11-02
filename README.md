[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Programming Fundamentals in Ruby

You've already learned the basics of programming with JavaScript, and you've
begun to think like a problem-solver. You've had practice reading JS code and
predicting execution by evaluating expressions in your mind.

We'll continue to reinforce the basics of programming, but this time with Ruby.
This may seem like a lot of material to cover in a short time, but the truth is
our task is simpler than it was when we introduced JS. Instead of teaching you
how to program, we'll focus on the _differences_ between Ruby and JS with the
goal of utilizing the foundation we've already built.

<hr>

#### <g-emoji class="g-emoji" alias="alarm_clock" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/23f0.png">⏰</g-emoji> Activity - 3min


Although we are about to make the switch and learn Ruby and Rails, much of being full stack web developer requires that you continue to develop for the front end which may include React but most certainly involves JavaScript. 

Let's take a look at a few jobs that require both Ruby/Rails & JavaScript:

- [Big Marker.com - Software Engineer](https://www.indeed.com/viewjob?cmp=BigMarker.com&t=Software+Engineer&jk=eb038dd32447a1c7&sjdu=QwrRXKrqZ3CNX5W-O9jEvRFd8FQI4DEv5V74lSpSnHa_ovrhMHxyws68UyimQSIUzw-QYsQS-BUwPJYPhHWguw&tk=1ee81ru3r41si800&adid=344301318&pub=4a1b367933fd867b19b072952f68dceb&vjs=3)
- [Edfinity - Full Stack](https://www.indeed.com/viewjob?cmp=Edfinity&t=Full+Stack+Engineer&jk=26ca731ce199d6f1&q=javascript+ruby+rails&vjs=3)

And a few of the most popular web sites that are built in Ruby/Rails

- [top-10-famous-sites-built-with-ruby-on-rails](https://prograils.com/posts/top-10-famous-sites-built-with-ruby-on-rails)

**Side Note:** You can use [https://builtwith.com/](https://builtwith.com/) to examine what tech was used to create a web site. 

<hr>


## Objectives

By the end of this, developers should be able to:

- Identify basic language features and types in Ruby.
- List and use common operators in Ruby.
- Identify operators in an expression and explain what they do.

## Preparation

_Before this lesson, students should:_

- Be comfortable with Javascript
- Have Ruby installed



## What is Ruby?

[Ruby](https://www.ruby-lang.org/en/about/) is a high-level programming language that gives us a lot of nice features out of the box.

Ruby is object-oriented: every value is an object, including classes and instances of types that many other languages designate as primitives (such as integers, booleans, and "null"). Variables always hold references to objects. Every function is a method and methods are always called on an object.


<img src="https://i.imgur.com/4lVnGnF.png" />



**NOTE:** Ruby does **not** run in the browser. It is most commonly used for backend web development with frameworks like [Sinatra](http://www.sinatrarb.com/) and [Rails](http://rubyonrails.org/).

## What's Ruby like?

### M.I.N.A.S.W.A.N. - Matz Is Nice And So We Are Nice


> "Programmers often feel joy when they can concentrate on the creative side of programming, so Ruby is designed to make programmers happy." — Yukihiro "Matz" Matsumoto 

<img src="https://www.azquotes.com/picture-quotes/quote-i-believe-that-the-purpose-of-life-is-at-least-in-part-to-be-happy-based-on-this-belief-yukihiro-matsumoto-102-79-90.jpg" />

### A **Natural** Language

While it isn't exactly simple, a lot of its features are going to feel intuitive.

> "Ruby is simple in appearance, but is very complex inside, just like our human body." — Yukihiro "Matz" Matsumoto

## Running Ruby

Running ruby files are similar to using `node`.  Just run `ruby FILENAME.rb`. 

We can also run ruby commands from the terminal using repl's like [`pry`](http://pryrepl.org/) or [`irb`](https://www.tutorialspoint.com/ruby/interactive_ruby.htm), which is the official ruby repl but `pry` is much a better tool. 

For the sake of recording all of the command and additional notes we will be using `.rb` files and not `pry` or `irb`. 


<hr>

#### <g-emoji class="g-emoji" alias="alarm_clock" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/23f0.png">⏰</g-emoji> Activity - 3min

The official Ruby docs are our friends, and we should use them liberally. 

Let's take a minute to look at the [Ruby Core](https://ruby-doc.org/core-2.7.1/) documentation.

<hr>


**Note:** You will reference this material again and again over the next few weeks. Focus
on noting the differences between Ruby and JS. 

## Creating and running a ruby file

Create a file called `ruby.rb` and open the file in your text editor. 

Add the following:

  ```ruby
  # this is a single line comment

  =begin
  this is a multileline comment 
  additional comment text
  and more comment text
  =end


  # this will console log to the terminal the string 'hello world'
  puts("hello World")
  ```

Open your terminal and run the file using: 

```sh
ruby ruby.rb
```

You ran your first ruby file and learned to use 2 of the most important helper tools at your disposal, `comments` and `console logs. 

## Working with the terminal

## (Console) Logging in Ruby

Let's talk about console logging a bit more. The equivalent of `console.log()` in JS is `puts` in Ruby. 

```ruby
puts('hi')
```

But one of the best parts about Ruby is that methods (functions in js) don't need params.

```ruby
puts 'hi'
```

As with almost all things Ruby, there are multiple methods to console log such as: 
- puts (which you've just learned)
- print
- p

### What is the difference between `p`, `puts` and `print`

What you will soon find out is that Ruby provides many methods that do essentially the same thing or just slightly different. That is true for `p` vs `puts` vs `print`

- `p` calls `.inspect` on an element, which will display it with all its information including quotes, if it is a string and includes a newline char `\n`
- `puts` just prints the element (without extra information) and like `p`, includes a newline char `\n`
- `print` - `puts` without a newline char.

## Core Syntax, Variables, and Operators

### What is a variable in Ruby?

A variable is an identifier that is assigned to an `OBJECT`, as all things in ruby are `OBJECTS`,  and which may hold a value. 


#### Examples:

```ruby
welcome = 'Welcome to Ruby Programming' # => String
one     = 1 # => Integer
price   = 10.25 # => Float
```

### Casing

All variables and methods must use `snake_case`


```ruby
my_first_var = 'hello world'
```

All constants (besides classes and modules) must use `SCREAMING_SNAKE_CASE`
```ruby
FOO_CONSTANT = "foo"
```

### Variable Declaration

Ruby handles variables differently than we've previously seen. In Ruby,
variables can be simply defined, **without previously being declared.** 

This
means that with Ruby, we don't need keywords like `let` and `const` before variables.
We can simply declare the variable and assign it a value `variable = value`.

```ruby
color = 'green'
puts color
```

However, this only works if we assign the variable a value. Why? Because
otherwise, Ruby will default to trying to _evaluate_ your variable, and because
you haven't defined it yet, Ruby will throw an error.

```ruby
counter
=> Traceback (most recent call last):
ruby.rb:8:in `<main>': undefined local variable or method `counter' for main:Object (NameError)'

counter = 0
=> 0

puts counter
=> 0

```

Ruby has its own set of scoping rules for variables, just like JavaScript does,
and they work in (mostly) similar ways.

We will talk about this later.


### Parallel Variable Assignment

With parallel assignment, you can assign several values to several variables in a single expression, based on order. A list of variables, separated by commas, can be placed to the left of the equals sign, with the list of values to assign them on the right. Here are a few examples:

```ruby
name, grade, gpa = 'Suresh', 89, 3.6
```

### Numbers

Numbers in Javascript, compared to Ruby, are very similar with some small
differences.

In Javscript there was really only one official type of number, but in Ruby
there is a different type if a number is a whole _integer_ (no decimals) or
a _float_ (contains decimals).

- Integers: `1`, `23`, and `-10000`
- Decimals: `3.14` and `-808.08` 

Numbers in Ruby are in the [`Numeric`](https://ruby-doc.org/core-2.5.1/Numeric.html) class. It's subclasses include [`Integer`](https://ruby-doc.org/core-2.5.1/Integer.html) and [`Float`](https://ruby-doc.org/core-2.5.1/Float.html)

We can determine the `class` of a value by calling it's `.class` method.

```ruby
puts 1.class
 => Integer
puts 1.0.class
 => Float
```

We can also perform the same math as in JavaScript. 
```ruby
1+1
 => 2
3-1
 => 2
3*3
 => 9
10/2
 => 5
1 / 2
 => 0 # (rounds down)
1 / 2.0
 => 0.5 # (does not round float)
```

Now the fun part. Ruby comes with so many methods that allow developers to be more efficient. 

Here are a few exampless. 

```ruby
2.next
 => 3 # (.next provides the next integer value)
2.pred
 => 1 # (.pred provides the preceding integer value)
2.lcm(3)
 => 6 # (.lcm gives us the least common multiple of the integer to which the method is applied and the value passed)
2.gcd(3)
 => 1 # (.gcd provides the greatest common divisor of the integer to which the method is applied and the value passed)
```

#### Methods
There are a number of methods available for any class.  Let's take a look at the methods available for the integer class, 

```ruby
2.methods

 => [:-@, :**, :<=>, :upto, :<<, :<=, :>=, :==, :chr, :===, :>>, :[], :%, :&, :inspect, :*, :+, :ord, :-, :/, :size, :succ, :<, :>, :to_int, :coerce, :to_s, :to_i, :to_f, :divmod, :to_r, :fdiv, :modulo, :remainder, :abs, :magnitude, :integer?, :floor, :ceil, :round, :truncate, :^, :odd?, :even?, :allbits?, :anybits?, :nobits?, :downto, :times, :pred, :pow, :bit_length, :digits, :numerator, :denominator, :rationalize, :gcd, :lcm, :gcdlcm, :next, :div, :|, :~, :imag, :abs2, :+@, :phase, :to_c, :polar, :angle, :conjugate, :conj, :eql?, :singleton_method_added, :i, :real?, :zero?, :nonzero?, :finite?, :infinite?, :step, :positive?, :negative?, :clone, :dup, :arg, :quo, :rectangular, :rect, :real, :imaginary, :between?, :clamp, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_set, :protected_methods, :instance_variables, :instance_variable_get, :private_methods, :public_methods, :public_send, :method, :public_method, :singleton_method, :define_singleton_method, :extend, :to_enum, :enum_for, :=~, :!~, :respond_to?, :freeze, :object_id, :send, :display, :nil?, :hash, :class, :singleton_class, :itself, :yield_self, :then, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :equal?, :!, :instance_exec, :!=, :instance_eval, :__id__, :__send__]
```

### Semicolons

In Ruby, there is a conspicuous lack of semicolons.

```ruby
a = 1
puts(a)
```

The end of a line (almost always) marks the end of an expression. Semicolons
are only required if you have two distinct expressions on one line.

```ruby
name = "Antony"; height_in_feet = 6
```

### Operators

In Ruby, everything is an expression - **a statement composed of a combination
of operands (data) and operations**.  

In JavaScript, things like `+` and `-` are
_true operators_ - keywords built into the language itself, and imbued with
fixed, unchangeable meanings.

In Ruby, by contrast, most "operators" you
encounter are actually method calls on some object; the main exceptions
are assignment operators (e.g. `=`), logical operators
(e.g. `||`, `&&`, `!`), and control flow operators (e.g. `and`, `or`, `not`).

#### Brief Aside: Syntactic Sugar

Ruby doesn't have an increment operator, either pre (`++i`) or post (`i++`) so use `+=` instead.

```ruby
counter = 0
=> 0

counter += 1
=> 1

counter += 1
=> 2

counter
=> 2
```

`counter += 1` is really just Ruby making you type fewer characters to
accomplish `counter = counter + 1`. This is commonly referred to as
`syntactic sugar` - when a programming language has syntax that's deliberately
designed to make code shorter/more semantic/easier to write.

Ruby has a _ton_ of syntactic sugar. [JavaScript allows us to use this shorthand for assignment too](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Assignment_Operators).
Just like with JavaScript and other languages, you can combine assignment with many
different operators like `*`, `-`, and even `||`.

```ruby
counter += 1           # counter = counter + 1
=> 1

counter *= 5           # counter = counter * 5
=> 5

counter -= 1           # counter = counter - 1
=> 4
```

## Strings

The easiest way to specify a string is to surround it either with double quotes (") or single quotes ('). The two types of quotes work a little differently

Single-quoted strings are referred to as
`string literals`; they interpret their contents as a literal sequence
of characters, with only two recognized escape sequences - `\'` and `\\`.

In contrast, double-quoted strings (" ") support a much wider variety of escape
characters, including `\n` (new line), `\t` (tab), and `\s` (space); if `\n`
appeared in a single-quoted string, it would be interpreted as the
character `\` followed by the character `\n`, rather than a new line.

Here they are used to create the same output. 

```ruby
'it\'s a great day' => "it's a great day"

"it\'s a great day" => "it's a great day"
```

But try using `\n` (new line) character and we are forced to use double quotes

```ruby
str = 'hello \n world'
puts str
'hello \n world'
```

```ruby
str = "hello \nworld"
=> "hello \nworld"

puts str
hello
world
```

### String Methods

Strings in Ruby are derived from the String class, and there are over 100 methods to manipulate and operate on strings. This is perhaps because, in programming, a lot revolves around strings, and Ruby reduces the headache by managing a lot out of the box.

As before we only need include `.method` to see all the methods. 

```ruby
puts "kenny".methods
```

Alternatively, you can call the `.sort` method to see them sorted. 

```ruby
puts "kenny".methods.sort
```

And, of course, the Ruby documentation has [a full list](https://ruby-doc.org/core-2.6.3/String.html) f methods as well.

### There are several methods for querying the length of a string:

```ruby
s = "hello"
s.length # => 5: counts characters in 1.9, bytes in 1.8
s.size # => 5: size is a synonym
```

#### Predicate Methods

Some methods end in a `?` and are called `predicate methods`,  which is a fancy way of saying they return `true` or `false`.  

```js
s.empty? # => false
"".empty? # => true

s.start_with? "hell" # => true. Note singular "start" not "starts"
s.end_with? "bells" # => false

s.include?("ll") # => true: "hello" includes "ll"
s.include?(?H) # => false: "hello" does not include character H
```

### Finding the position of a substring or pattern match

String methods for searching a string and for replacing content include the following:

```ruby
s = "hello"
s.index('l') # => 2: index of first l in string
s.index('l',3) # => 3: index of first l in string at or after position 3
s.index('Ruby') # => nil: search string not found
```

### Pattern matching with regular expressions

```ruby
s =~ /[aeiou]{2}/ # => nil: no double vowels in "hello"
s.match(/[aeiou]/) {|m| m.to_s} # => "e": return first vowel
```

### Splitting a string into substrings based on a delimiter string or pattern

```ruby
"this is it".split # => ["this", "is", "it"]: split on spaces by default
"hello".split('l') # => ["he", "", "o"]
```

### Some additional useful string methods

```ruby
s = "hello"
s.concat(" world") # Synonym for <<. Mutating append to s. Returns new s
s.insert(5, " there") # Same as s[5] = " there". Alters s. Returns new s
s.slice(0,5) # Same as s[0,5]. Returns a substring
s.slice!(5,6) # Deletion. Same as s[5,6]="". Returns deleted substring
s.eql?("hello world") # True. Same as ==
```

### Interpolation

To interpolate strings in Ruby, you must use double quotes.

```ruby
"I have #{13 * 4} cards" # => "I have 52 cards"
'I have #{13 * 4} cards' # => 'I have #{13 * 4} cards'
```

### Concatenation

You can also concatenate strings but this is NOT recommend

```ruby
'foo' + 'bar' # => 'foobar'
'foo' + 2 # => TypeError: no implicit conversion of Integer into String
'foo' + 2.to_s # => 'foo2'
```

Above we see that we can NOT implicitly convert a non-string into a string (unlike what we have seen in JS).

#### Conversion Methods
String objects come with several conversion methods that all start `to_` and
then a letter or abbreviation hinting as to what conversion they perform.

`to_i` and `to_f` are used commonly - these convert the string into one of two
types of numbers, _integers_ (whole numbers) and _floats_ (decimal numbers).

```ruby
21.10.to_i
=> 21

21.to_f
=> 21
```

Ruby doesn't implicitly convert numbers to strings, so all those
string conversions need to be done manually using `.to_s`.

```ruby

name = "Lauren"
puts name
=> "Lauren"

height_in_feet = 5
puts height_in_feet
=> 5

puts name + " is " + height_in_feet + " feet tall."
ruby.rb:20:in `+': no implicit conversion of Integer into String (TypeError)`

puts name + " is " + height_in_feet.to_s + " feet tall."
=> "Lauren is 5 feet tall."
```

### Booleans

Of course Ruby has two booleans `true` and `false`

Each object has a `==` method that compares to another object.

```ruby
1 == 1 # => true
1 == '1' # => false
1 == 1.0 # => true
[1, 2] == [1, 2] # => true
[1, 2] == [2, 1] # => false
{a: 1, b: 2} == {b: 2, a: 1} # => true
```

> Do NOT use `===`. This is not the same as what it means in JS.

### Truthy and Falsy

Ruby only has **two** falsy values: `nil` and `false`.

So unlike JS `0` and `''` are truthy. (There is no `null`, `undefined`, `NaN`, `-0`)

```ruby
!! false # => false
!! nil # => false

!! 0 # => true
!! '' # => true
```

## Flow Control

<!-- <img src="https://i.giphy.com/media/h8y265b9iKtzKT0pDj/giphy.webp" width="600px"> -->

### Conditionals

Every language has them and Ruby is no different but with Ruby we can leave out a few characters that were required in JS.

```ruby
# Ruby version
if name == "Jason"
  puts "It's Jason"
elsif name == "Lauren"
  puts "It's Lauren"
else
  puts "Not Jason or Lauren"
end
```

<hr>
:question: From your previous knowledge of JS what stands out as being different in Ruby vs a JS if/else statement? 

<hr>

<details><summary>Differences</summary>

- In Ruby, we use `elsif`, not `else if`.

- Conditions don't require parentheses (though they can still accept them).

- No curly braces required. Simply break up your condition from your code with a
  newline (as above), a semicolon, or the keyword `then` (e.g. `if....then`).

- The end of the `if` is indicated by the keyword `end`. `end` is an extremely common
  keyword in Ruby, appearing at the end of pretty much any contiguous section of
  code.

</details>

#### Ternary operator  

A ternary operator looks just like we have seen in JS

```ruby
num.even? ? "#{num} is even!" : "#{num} is odd!"
```

### Loops

Similarly to `if`, a `while` loop also looks almost the same in Ruby as it does
in JavaScript.

```ruby
i = 3
while i < 10 do
  puts i += 1
end
```

The `do ... end` is a common construction in Ruby because it specifies what's known as a
**block**, a grouping of several lines of code. We'll learn more about
blocks soon.

`for` loops in Ruby exist, but are not commonly used. Instead, we use the
[upto](https://ruby-doc.org/core-2.6.3/Integer.html#method-i-upto) enumerator.
We'll learn more about enumerators soon.

```ruby
1.upto(max) do |i|
  # code to execute in loop
end
```

In our `ruby.rb` file, let's enter:

```ruby
1.upto(10) do |i|
  puts i
end
```

What do you expect to print? What does print?

There are additional looping constructs like .times

```ruby
3.times do |i| 
 puts i
end
# > 0
# > 1
# > 2
```

> Yes there _are_ `for` loops in Ruby but we DO NOT use them

<hr>

#### <g-emoji class="g-emoji" alias="alarm_clock" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/23f0.png">⏰</g-emoji> Activity  - Algo: Reverse A String Of Text - 25min

Since you are now well versed in using string methods, conditionals and loops in Ruby it's time to put those skills to the test.  

Open and fork the following [repl](https://repl.it/@jkeohan/Ruby-Reverse-A-String-Of-Text-Starter#main.rb) and following the instruction to reverse a string of text. 

<!-- <details><summary>Solution</summary>

https://repl.it/@jkeohan/Ruby-Reverse-A-String-Solution-SEIR526#main.rb

</details> -->



<hr>

## Methods

Ruby draws no distinction between functions that are properties of objects and
functions that aren't; in Ruby, all of them are called 'methods'.

To define a method, you use the following syntax:

```ruby
def square (num)
  Math.sqrt(num).to_i**2 == num
end
```

Ruby methods use an _implicit return_ - by default, they will return the value
of the last expression evaluated (which may or may not be a return expression).

However, Ruby does also have a `return` keyword which, as it does in
JavaScript, immediately terminates the function/method and sends back a value.
In the case of the method above, `square?` will return the value of that last
expression, `Math.sqrt(num).to_i**2 == num`.

A method can also include a question mark, which is by convetion only and indicates that the method will return a boolean.

```ruby
def square? (num)
  Math.sqrt(num).to_i**2 == num
end
```

Another
common convention in Ruby is a trailing exclamation point, which indicates that
a method is a 'mutator' - this means that the method changes the object that
it is called from, rather than returning a new object.

> This behavior is also sometimes referred to as operating 'in place'.

```ruby
string = 'hello'
=> "hello"

string.upcase!
=> "HELLO"

string
=> "HELLO"
```

## Common Gotchas When Learning Ruby After JavaScript

### == vs ====

`==` and `===` mean different things between the two languages. In
JavaScript, `===` is a 'strict equality' comparator, while `==` is a
'loose equality' comparator; since `==` has some weird exceptions, the
convention is to almost always use `===`.

**In Ruby, however, the reverse is true; you should `==` to test for equality,
and _not_ use `===`**

Generally, it returns true if the object on the right “belongs to” or “is a member of” the object on the left. For instance, it can be used to test if an object is an instance of a class (or one of its subclasses).

```ruby
String === "zen"  # Output: => true
Range === (1..2)   # Output: => true
Array === [1,2,3]   # Output: => true
Integer === 2   # Output: => true
```

This is similar to using the `instanceof` in JavaScript

```js
new Number(2) instanceof Number // Output => true
```

<hr>

Per [StackOverflow](https://stackoverflow.com/questions/3422223/vs-in-ruby)

The two really have nothing to do with each other. In particular, #== is the equality operator and #=== has absolutely nothing to with equality. Personally, I find it rather unfortunate that #=== looks so similar to #==, uses the equals sign and is often called the case equality operator, triple equals operator or threequals operator when it really has nothing to do with equality.

I call #=== the case subsumption operator (it's the best I could come up with, I'm open to suggestions, especially from native English speakers).

The best way to describe a === b is "if I have a drawer labeled a, does it make sense to put b in it?"

So, for example, Module#=== tests whether b.is_a?(a). If you have Integer === 2, does it make sense to put 2 in a box labeled Integer? Yes, it does. What about Integer === 'hello'? Obviously not.

<hr>


### .equal?

Use `.equal?` if we _need_ to test for identity (two variables that
reference the same object).

```ruby
a = 'xyz'
b = 'xyz'

a.equal? b
=> false
```

Hmmm...why are they not equal? Any thoughts?

This is because .equal? checks if the two operands refer to the same object. This is the strictest form of equality in Ruby.

```ruby
a.object_id  # Output: => 20139460
b.object_id  # Output :=> 19972120
```

### More Differences

- Ruby has several different numeric types (unlike JavaScript),
  but most operations "do what we expect".

- Booleans: Only `false` and `nil` are falsy in Ruby.
  Everything else is truthy.

- We don't need to use parentheses when invoking a method (as we saw above
  with the `+` method - one exception later). But sometimes they add clarity,
  so it can be beneficial to include them.

- The Ruby comment character is `#`. Everything following a `#` on a line
  is ignored by the interpreter.

- `p`, `puts`, and `print` are not directly analogous to
  console.log but are often used for a similar purpose when writing scripts
  run from the terminal.

- Ruby's convention is to use underscores between words in names (a.k.a.
  'snake_case'). Constants start with a capital letter.

- Ruby doesn't implicitly convert numbers to strings.

<hr>

#### <g-emoji class="g-emoji" alias="alarm_clock" fallback-src="https://github.githubassets.com/images/icons/emoji/unicode/23f0.png">⏰</g-emoji> Activity  - Algo: FizzBuzz - 25min

Fork this reply: [Ruby - FizzBuzz - Starter](https://repl.it/@jkeohan/Ruby-FizzBuzz-Starter#main.rb)

In pairs, you're going to write a method called `fizz_buzz` that accept a single argument called `max_num`.

Essentially, your program should print out all of
the numbers from 1 up to `max_num`, which is a variable to which you can assign
an arbitrary (positive, integer) value. 

However, if a number is divisible by
3, instead of printing the number, your program should print the word `fizz`;
for numbers divisible by 5, it should print `buzz`; for numbers divisible by
both 3 **and** 5, it should print `fizzbuzz`.

Here is the output:

```ruby
max_num = 35

## what should print to the console

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
```

To run your code, simply navigate to the root of this repository and run
`ruby fizzbuzz.rb`

> Running a script in this way should seem familiar, since it's exactly what we
> were doing with `node`. It's a deliberate similarity - Node was
> modeled off of other console-based runtime environments, as a way of giving
> JavaScript a solid platform for running on the server side.



## Additional Resources

- [Links to a variety of offical language and api documentation](https://www.ruby-lang.org/en/documentation/)
- [why's (poignant) Guide to Ruby](http://mislav.uniqpath.com/poignant-guide/)
- [Ruby — Basic Data Types](https://blog.botreetechnologies.com/ruby-basic-data-types-12d63251e33c)
- [Variable References and Mutability of Ruby Objects](https://launchschool.com/blog/references-and-mutability-in-ruby)
- [Object Passing in Ruby - Pass by Reference or Pass by Value](https://launchschool.com/blog/object-passing-in-ruby)
- [What's the difference between equal?, eql?, ===, and ==?](https://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and)
- [Ruby Koans](https://rubykoans.com/)
