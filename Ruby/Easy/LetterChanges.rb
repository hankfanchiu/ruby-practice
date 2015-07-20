# Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm.
# Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a).
# Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def LetterChanges(str)

  str.gsub!(/[a-zA-Z]/) { |l| l.next }
  str.gsub!(/[aeiou]/) { |v| v.upcase }
  
  return str
  
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
LetterChanges(STDIN.gets)  
