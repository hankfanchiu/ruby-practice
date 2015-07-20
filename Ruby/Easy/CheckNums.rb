# Have the function CheckNums(num1,num2) take both parameters being passed and return the string true
# if num2 is greater than num1, otherwise return the string false.
# If the parameter values are equal to each other then return the string -1. 

#Use the Parameter Testing feature in the box below to test your code with different arguments.

def CheckNums(num1,num2)

  if num1 < num2
    true
  elsif num1 > num2
    false
  else
    "-1"
  end 
  
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
CheckNums(STDIN.gets)   
