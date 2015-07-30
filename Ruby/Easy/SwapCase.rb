# Have the function SwapCase(str) take the str parameter and swap the case of each character.
# For example: if str is "Hello World" the output should be hELLO wORLD.
# Let numbers and symbols stay the way they are. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

# Brute-force method:
def SwapCase(str)

  arr = str.chars.map do |letter|
    if letter == letter.downcase
      letter.upcase
    else
      letter.downcase
    end
  end
  
  arr.join
  
end

# Rubyist method:
def SwapCaseII(str)
  
  str.swapcase
  
end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
SwapCase(STDIN.gets)  
