=begin
August 2nd 2018
A simple script to store data on films
=end

#hash containing movie name, rating
movies = {
  Avatar: 5,
  Airplane: 5
  }
#inform user of choices
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
#picks users choice, converts to all lower case
choice = gets.chomp.downcase

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  #checks to see if the film already exists, if it doesn't, nil will be true
  if movies[title.to_sym].nil?
    puts "What rating does the movie have? "
    rating = gets.chomp
    #stores movie name as a symbol, rating as an intehger
    movies[title.to_sym] = rating.to_i
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What movie would you like to update? "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That movie does not exist."
  else
    puts "What is the new rating? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
when "display"
  movies.each do |title, rating|
    puts "#{title}: #{rating}"
  end
when "delete"
  puts "What movie would you like to delete? "
  title = gets.chomp
 if movies[title.to_sym].nil?
   puts "That movie does not exist."
 else
   movies.delete(title)
 end
else
  puts "Error!"
end
