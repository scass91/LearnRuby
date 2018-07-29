=begin
July 29th 2018
Fizzbuzz attempt in ruby
=end

for i in 1 .. 100
    if i % 15 == 0
    puts "Fizzbuzz"
    elsif i % 3 == 0
    puts "Fizz"
    elsif i % 5 == 0
    puts "Buzz"
    else
    puts i
end
end
