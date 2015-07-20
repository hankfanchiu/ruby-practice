# Have the function VowelCount(str) take the str string parameter being passed and
# return the number of vowels the string contains (ie. "All cows eat grass" would return 5).
# Do not count y as a vowel for this challenge. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def VowelCount(str)

  return str.scan(/[aeiou]/).size

end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
VowelCount(STDIN.gets)  
