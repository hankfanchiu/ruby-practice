# Have the function RunLength(str) take the str parameter being passed and
# return a compressed version of the string using the Run-length encoding algorithm.
# This algorithm works by taking the occurrence of each repeating character and
# outputting that number along with a single character of the repeating sequence.

# For example: "wwwggopp" would return 3w2g1o2p.
# The string will not contain any numbers, punctuation, or symbols. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def RunLength(str)
  
  temp = []
  results = []
    
  i = 0
  while i < str.chars.count
    temp << str.chars[i]

    if str.chars[i + 1] != str.chars[i]
      results << temp.count
      results << str.chars[i]
      temp.clear
    end
    
    i += 1
    end
    
  return results.join
end
 
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
RunLength(STDIN.gets)

def RunLengthII(str)

  temp = []
  results = []
  
  str.chars.each_with_index do |element, index|
    temp << element
    
    if str.chars[index + 1] != str.chars[index]
      results << temp.count
      results << element
      temp.clear
    end
  end
  
  return results.join
end
