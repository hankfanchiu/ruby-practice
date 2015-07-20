# Have the function SimpleAdding(num) add up all the numbers from 1 to num.
# For the test cases, the parameter num will be any number from 1 to 1000. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def SimpleAdding(num)

  return (1..num).to_a.inject { |sum, x| sum + x }
  
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
SimpleAdding(STDIN.gets)   
