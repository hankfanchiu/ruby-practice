# Have the function SecondGreatLow(arr) take the array of numbers stored in arr and
# return the second lowest and second greatest numbers, respectively, separated by a space.
# For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98.
# The array will not be empty and will contain at least 2 numbers.
# It can get tricky if there's just two numbers! 

def SecondGreatLow(arr)
  
  if arr.length == 2
    return "#{arr.max} #{arr.min}" 
  end
  
  arr = arr.uniq.sort
  return "#{arr[1]} #{arr[-2]}"
end
