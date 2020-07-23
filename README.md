[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Programming Fundamentals in Ruby

You've already learned the basics of programming with JavaScript, and you've
begun to think like a problem-solver. You've had practice reading JS code and
predicting execution by evaluating expressions in your mind.

We'll continue to reinforce the basics of programming, but this time with Ruby.
This may seem like a lot of material to cover in a short time, but the truth is
our task is simpler than it was when we introduced JS. Instead of teaching you
how to program, we'll focus on the *differences* between Ruby and JS with the
goal of utilizing the foundation we've already built.

"Polyglot" is a term used to refer to someone who can use two or more
programming languages. By learning two languages, we increase your understanding
of basic programming concepts, as well as give you an edge in the job market.

You will reference this material again and again over the next few weeks. Focus
on noting the differences between Ruby and JS. You should use this material as
you would the [HyperPolyglot](http://hyperpolyglot.org/scripting) reference: not
as reading material, but as a handy place to define and experiment with the
basics of Ruby.


## Objectives

By the end of this, developers should be able to:

- Identify basic language features and types in Ruby.
- List and use common operators in Ruby.
- Identify operators in an expression and explain what they do.


## Outline

In order to accomplish our learning objectives, we've got quite a number of Ruby
features to cover. These include:

- Variable declaration and naming conventions.
- Strings, interpolation, and concatenation.
- Methods and functions, including predicates.
- Fixnums, Floats, and Numbers.
- Falsiness.
- Flow control.
- Loops, ranges, and enumerable iteration.
- Implicit and explicit returns.
- Expression evaluation and conditional assignment.
- Type coercion.
- Logic, shortcut evaluation, and operator precedence.

## Foreword

The depth and breadth of the [Ruby Core](https://ruby-doc.org/core-2.6.3/) and
[Standard Library](https://ruby-doc.org/stdlib-2.6.3/) are so extensive that
we'll always want to check them before building something ourselves.  The
official Ruby docs are our friends, and we should use them liberally.  Over
time, we'll learn to remember the more common methods, but even then it can be
extremely useful to consult the documentation.

## Creating and running a ruby file
- Create a file called `ruby.rb`
- Open this file in your text editor and write 

  ```ruby
  puts("hello World")
  ```

- Open your terminal and run your `ruby.rb` file by running `ruby ruby.rb`

You ran your first ruby file!

<img src="https://media.giphy.com/media/6nuiJjOOQBBn2/giphy.gif" alt="ruby" width="300px" >

<br>
<br>

## Ruby :: Working with the terminal

## Logging in Ruby
- The equivalent of console.log() is `puts`
- functions in ruby don't need parentheses

```ruby
puts('hi')
puts 'hi'
p 'hi' # shortest syntax and shows the datatype
```

`puts` is used most often.

### What is the difference between `puts` and `p`
`p vs puts vs print`

- `p` calls `.inspect` on an element, which will display it with all its information including quotes, if it is a string.
- `puts` just prints the element (without extra information) and like `p`, includes a newline char `\n`
- `print` also just prints, but does not include a newline char.

## `gets`

You can get input from a user in the console using gets.


```ruby
some_var = gets
puts some_var
```
<br>

## Ruby :: Core Syntax, Variables, and Operators

### Numbers

Numbers in Javascript compared to Ruby are very similar with some small
differences.

In Javscript there was really only one official type of number, but in Ruby
there is a different type if a number is a whole _integer_ (no decimals) or
a _float_ (contains decimals).

Integers: `1`, `23`, and `-10000`
Decimals: `3.14`, `-808.08` and `12.043e-04`

Commas are not allowed in numbers, but underscores are. So if you feel the
need to mark your thousands so the numbers are more readable,
use an underscore.

`population = 12_000_000_000`

<br>

### Semicolons

In Ruby, there is a conspicuous lack of semicolons.

```ruby
a = 1
puts(a)
```

The end of a line (almost always) marks the end of an expression; semicolons
are only required if you have two distinct expressions on one line
(e.g. `name = "Antony"; height_in_feet = 6`). The most likely place where you might
spot a semicolon in Ruby is inside a `for` loop, and those (as you'll soon see) are
used *very* infrequently in Ruby.

<br>

### Variable Declaration

Ruby handles variables differently than we've previously seen. In Ruby,
variables can be simply defined, **without previously being declared.** This
means that with Ruby, we don't need keywords like `let` and `const` before variables.
We can simply declare the variable and assign it a value `variable = value`.

```ruby
a = 1
puts a
```

However, this only works if we assign the variable a value. Why? Because
otherwise, Ruby will default to trying to *evaluate* your variable, and because
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

<br>

### Operators

In Ruby, everything is an expression - a statement composed of a combination
of operands (data) and operations. In JavaScript, things like `+` and `-` are
*true operators* - keywords built into the language itself, and imbued with
fixed, unchangeable meanings. In Ruby, in contrast, most "operators" you
encounter are actually method calls on some object; the main exceptions
are assignment operators (e.g. `=`), logical operators
(e.g. `||`, `&&`, `!`), and control flow operators (e.g. `and`, `or`, `not`).

<br>

#### Brief Aside: Syntactic Sugar

Ruby doesn't have an increment operator, either pre (`++i`) or post (`i++`).
Use `+=` instead.

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
'syntactic sugar' - when a programming language has syntax that's deliberately
designed to make code shorter/more semantic/easier to write. Ruby has a *ton*
of syntactic sugar. [JavaScript allows us to use this shorthand for assignment too](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Assignment_Operators).
Just like with JavaScript and other languages, you can combine assignment with many
different operators like `*`, `-`, and even `||`.

```ruby

counter ||= 0          # counter = counter || 0
=> 0

counter += 1           # counter = counter + 1
=> 1

counter *= 5           # counter = counter * 5
=> 5

counter -= 1           # counter = counter - 1
=> 4
```

<br>

## Ruby :: Strings

To see all the methods that strings have in Ruby, open up your `ruby.rb`, `put` a string
followed by a `.methods`, an run your file; 

```ruby
puts "Madeline".methods`
```

Alternatively, you can call
`"some string".methods.sort` for a full list. And, of course, the Ruby documentation
has [a full list](https://ruby-doc.org/core-2.6.3/String.html) as well.

Strings objects come with several conversion methods that all start `to_` and
then a letter or abbreviation hinting at what conversion they perform.
`to_i` and `to_f` are used commonly - these convert the string into one of two
types of numbers, *integers* (whole numbers) and *floats* (decimal numbers).

### String Interpolation

Ruby attributes different meanings to single-quoted and
double-quoted strings. Single-quoted strings are referred to as
*'string literals'*; they interpret their contents as a literal sequence
of characters, with only two recognized escape sequences - `\'` and `\\`.
In contrast, double-quoted strings (" ") support a much wider variety of escape
characters, including `\n` (new line), `\t` (tab), and `\s` (space); if `\n`
appeared in a single-quoted string, it would be interpreted as the
character `\` followed by the character `\n`, rather than a new line.

One neat thing that comes out of this is the ability to do
*string interpolation*, inserting variables directly into the middle of a
string.

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

Fortunately, Ruby does give us an alternative - at least with double-quoted
strings. If the sequence `#{ ... }` appears inside a double-quoted string,
Ruby will replace it with the value of the expression inside the curly braces,
converted to a string.

So instead of:

```ruby
name = "Lauren"
=> "Lauren"

height_in_feet = 5
=> 5

name + " is " + height_in_feet.to_s + " feet tall."
=> "Lauren is 5 feet tall."
```

We can use:

```ruby

name = "Lauren"
=> "Lauren"

height_in_feet = 5
=> 5

"#{name} is #{height_in_feet} feet tall."
=> "Lauren is 5 feet tall."
```

This also works:

```ruby

"ten + seven == #{10 + 7}"
=> "ten + seven == 17"
```
<br>
<br>

## Ruby :: Flow Control

<img src="https://i.giphy.com/media/h8y265b9iKtzKT0pDj/giphy.webp" width="600px">



### Conditionals

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

A Ruby `if` looks quite similar to a JavaScript `if`. Some of the major
differences are:

- In Ruby, we use `elsif`, not `else if`.

- Conditions don't require parentheses (though they can still accept them).

- No curly braces required. Simply break up your condition from your code with a
  newline (as above), a semicolon, or the keyword `then` (e.g. `if....then`).

- The end of the `if` is indicated by the keyword `end`. `end` is an extremely common
  keyword in Ruby, appearing at the end of pretty much any contiguous section of
  code.

`unless` can sometimes be used to replace an `if` with a negated test and no
`elsif` or `else`.

```ruby
if !(name == "Jason")
  puts "Not Jason!"
end
```

becomes

```ruby
unless name == "Jason"
  puts "Not Jason!"
end
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

The `do ... end`
 is a common construction in Ruby because it specifies what's known as a
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

### Code Along: `upto`

In our `ruby.rb` file, let's enter:

```ruby
1.upto(10) do |i|
  puts i
end
```

What do you expect to print? What does print?

### Lab: FizzBuzz

Create a new file called `fizzbuzz.rb`.
In pairs, you're going to solve "FizzBuzz", a simple programming challenge
based on a childrens' game. 

Essentially, your program should print out all of
the numbers from 1 up to `max_num`, which is a variable to which you can assign
an arbitrary (positive, integer) value. However, if a number is divisible by
3, instead of printing the number, your program should print the word "fizz";
for numbers divisible by 5, it should print "buzz"; for numbers divisible by
both 3 **and** five, it should print "fizzbuzz".

For example:

```ruby
max_num = 16

## what should print to the console

1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
```

To run your code, simply navigate to the root of this repository and run
`ruby fizzbuzz.rb`

> Running a script in this way should seem familiar, since it's exactly what we
> were doing with `node`. It's a deliberate similarity - Node was
> modeled off of other console-based runtime environments, as a way of giving
> JavaScript a solid platform for running on the server side.

<img src="https://i.giphy.com/media/ZVik7pBtu9dNS/giphy.webp" width="500px">

<br>
<br>
<br>

## Ruby :: Methods

Ruby draws no distinction between functions that are properties of objects and
functions that aren't; in Ruby, all of them are called 'methods'.

To define a method, you use the following syntax:

```ruby
def square? (num)
  Math.sqrt(num).to_i**2 == num
end
```

The question mark is conventional for methods that return a boolean.  

Another
common convention in Ruby is a trailing exclamation point, which indicates that
a method is a 'mutator' - this means that the method changes the object that
it is called from, rather than returning a new object.

> This behavior is also sometimes referred to as operating 'in place'.

Ruby methods use an *implicit return* - by default, they will return the value
of the last expression evaluated (which may or may not be a return expression).

However, Ruby does also have a `return` keyword which, as it does in
JavaScript, immediately terminates the function/method and sends back a value.
In the case of the method above, `square?` will return the value of that last
expression, `Math.sqrt(num).to_i**2 == num`.

<br>

### Lab: Fizzbuzz Method

Take your code from the previous exercise and turn it into a method called
`fizzbuzz`; this method should accept an argument, `max_num`.

At the end of your program, add the following line:

```ruby

p fizzbuzz(10)

```


Once you're finished writing your method, run the program with
`ruby fizzbuzz.rb`.

Does your code work like you'd expect?

<br>
<hr>


<img src="https://memeshappen.com/media/created/2019/05/Ruby-You-rock.jpg" width="500px">

## Common Gotchas When Learning Ruby After JavaScript

- `==` and `===` mean different things between the two languages. In
JavaScript, `===` is a 'strict equality' comparator, while `==` is a
'loose equality' comparator; since `==` has some weird exceptions, the
convention is to almost always use `===`.
**In Ruby, however, the reverse is true; you should `==` to test for equality,
and *not* use `===`** (which does something different).

- Use `.equal?` if we *need* to test for identity (two variables that
reference the same object).

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

## Additional Resources

- [Links to a variety of offical language and api documentation](https://www.ruby-lang.org/en/documentation/)
- [why's (poignant) Guide to Ruby](http://mislav.uniqpath.com/poignant-guide/)
- [Ruby — Basic Data Types](https://blog.botreetechnologies.com/ruby-basic-data-types-12d63251e33c)
- [Variable References and Mutability of Ruby Objects](https://launchschool.com/blog/references-and-mutability-in-ruby)
- [Object Passing in Ruby - Pass by Reference or Pass by Value](https://launchschool.com/blog/object-passing-in-ruby)
- [What's the difference between equal?, eql?, ===, and ==?](https://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and)
- [Ruby Koans](https://rubykoans.com/)


## [License](LICENSE)

1. All content is licensed under a CC­BY­NC­SA 4.0 license.
1. All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.

