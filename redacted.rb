=begin
July 30th 2018
Replace words in a string which aren't needed
with REDACTED
=end

puts "Text to search through:"
text = gets.chomp
puts "Which words should be redacted?"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
