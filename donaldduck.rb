=begin
July 29th 2018
Asks a user for a string, then donald-duckifies it
=end

print "Enter a string please! "
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
  #gsub stands for global substitution
  user_input.gsub!(/s/, "th")
else
  print "No need to change this string!"
end
puts ""
puts "Adios, #{user_input}!"
