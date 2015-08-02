# Have the function DivisionStringified(num1,num2) take both parameters being passed,
# divide num1 by num2, and return the result as a string with properly formatted commas.

# If an answer is only 3 digits long, return the number with no commas (ie. 2 / 3 should output "1").

# For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345". 

def DivisionStringified(num1,num2)
  
  quotient = (num1 / num2.to_f).ceil.to_s
  
  # Split quotient into reversed array of digits
  split = quotient.reverse.chars
  
  # Join array above into number string with commas
  joined = split.each_slice(3).map(&:join).join(',').reverse
  
  return joined

end
