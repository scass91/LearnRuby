=begin
July 29th 2018
Form formatter - .capitalize! modifies a string,
.capitalize will add a new string
=end

print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What is the abbreviation of your state/province? "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name}, you live in #{city}, #{state}!"
