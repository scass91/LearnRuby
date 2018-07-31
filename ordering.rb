=begin
July 31st 2018
Alphabetize & reverse alphabetize a given array
=end

#define a method, parameters represent an array and a boolean, default to false
def alphabetize(arr, rev=false)
  arr.sort!
#if logic dependant upon the second parameter being different from false
  if rev == true
    arr.reverse!
  else
    arr
  end
end

numbers = [1, 3, 44, 5, 2]
puts alphabetize(numbers)
puts alphabetize(numbers, true)
