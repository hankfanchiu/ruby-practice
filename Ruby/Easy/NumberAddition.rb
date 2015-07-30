# Have the function NumberSearch(str) take the str parameter,
# search for all the numbers in the string, add them together, then return that final number. 
# For example: if str is "88Hello 3World!" the output should be 91.
# You will have to differentiate between single digit numbers and
# multiple digit numbers like in the example above.
# So "55Hello" and "5Hello 5" should return two different answers.
# Each string will contain at least one letter or symbol. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

# My solution:
def NumberAddition(str)

  arr = str.scan(/\d+/).map(&:to_i)
  arr == [] ? 0 : arr.reduce(:+)
  
end

# Adapted from another person's solution that I like:
def NumberAdditionII(str)

  sum = 0
  numbers = str.scan(/\d+/).map(&:to_i)
  
  numbers.each { |n| sum += n }
  
  sum

end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
NumberAddition(STDIN.gets)         
