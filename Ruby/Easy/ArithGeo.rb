# Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored in arr and
# return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric"
# if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1.
# An arithmetic sequence is one where the difference between each of the numbers is consistent,
# where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio.
# Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54].
# Negative numbers may be entered as parameters, 0 will not be entered,
# and no array will contain all the same elements. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def ArithGeo(arr)
  
  arithmetic = true
  geometric = true
  
  diff = arr[1] - arr[0]
  ratio = arr[1] / arr[0]
  
  i = 0
  
  while i < arr.length
    if arr[i + 1] - arr[i] != diff
      arithmetic = false
    end
    if arr[i + 1] / arr[i] != ratio
      geometric = false
    end
    i += 1
  end
  
  return "Arithmetic" if arithmetic
  return "Geometric" if geometric
  -1

end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
ArithGeo(STDIN.gets)
