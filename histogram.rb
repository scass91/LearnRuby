=begin
July 30th 2018
Count the number of times a word appears in a string and
return this. Intro to hashes
=end

#user prompt
puts "Input your text please: "
#takes user input to text variable
text = gets.chomp
#splits all words in the string text into words array
words = text.split
#creates a new hash, frequencies, with a default value of 0
frequencies = Hash.new(0)
#iterate over the array, counting the number of appearances
words.each {|word| frequencies[word] +=1}
#sort the hash by the wordcount - y, in this case
frequencies = frequencies.sort_by do |x, y|
  y
end
#reverses the hash to show the most frequent first
frequencies.reverse!
#prints out the hash
frequencies.each do |x,y|
  puts x + " " + y.to_s
end
