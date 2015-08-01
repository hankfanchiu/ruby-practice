# Have the function PrimeTime(num) take the num parameter being passed and
# return the string true if the parameter is a prime number, otherwise return the string false.
# The range will be between 1 and 2^16. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def PrimeTime(num)

  i = 2
  while i > 1 && i ** 2 < num
    if num % i == 0
      return false
    end
    i += 1
  end
  
  return true
end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
PrimeTime(STDIN.gets)   
