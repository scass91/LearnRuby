=begin
August 4th 2018
Greeter Proc
=end

def greeter()
  yield
end

phrase = Proc.new do
  puts "Hello there!"
end

greeter(&phrase)
