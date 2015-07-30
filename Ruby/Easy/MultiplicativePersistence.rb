# Have the function MultiplicativePersistence(num) take the num parameter being passed
# which will always be a positive integer and return its multiplicative persistence
# which is the number of times you must multiply the digits in num until you reach a single digit.

# For example: if num is 39 then your program should return 3 because 3 * 9 = 27
# then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def MultiplicativePersistence(num)

  counter = 0
  until num.to_s.size == 1
    # Replace the parameter with product of its digits
    num = num.to_s.chars.map(&:to_i).reduce(:*)
    
    counter += 1
  end
  
  return counter
end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
MultiplicativePersistence(STDIN.gets)
