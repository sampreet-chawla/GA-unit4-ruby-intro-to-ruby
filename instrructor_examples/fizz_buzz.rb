# https://repl.it/@jkeohan/Ruby-FizzBuzz-Solutions

# WHILE LOOP
# i = 0
# while i < 35 do 
#  if i % 3 == 0 && i % 5 == 0
#     puts "fizz buzz #{i}"
#   elsif i % 3 == 0
#     puts "fizz " + i.to_s
#   elsif i % 5 == 0
#     puts "buzz"
#   else 
#     puts i
#   end
#   i += 1
# end

# FOR IN LOOP
# for i in 0..35
#  if i % 3 == 0 && i % 5 == 0
#     puts "fizz buzz #{i}"
#   elsif i % 3 == 0
#     puts "fizz " + i.to_s
#   elsif i % 5 == 0
#     puts "buzz"
#   end
# end

def fizz_buzz2 max_value
   0.upto(max_value - 1) do |i|
    case true
    when (i % 3 == 0) && (i % 5 == 0)
      puts "fizzbuzz"
    when i % 3 == 0
      puts "fizz"
    when i % 5 == 0
     puts "buzz"
    else
      # puts i
    end
  end
end

fizz_buzz2 35
