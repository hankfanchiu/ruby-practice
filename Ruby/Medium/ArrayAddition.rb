# Have the function ArrayAddition(arr) take the array of numbers stored in arr and return the string true
# if any combination of numbers in the array can be added up to equal the largest number in the array,
# otherwise return the string false.

# For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23.

# The array will not be empty, will not contain all the same elements, and may contain negative numbers. 

def ArrayAddition(arr)
  
  no_max = arr.dup
  no_max.slice!(no_max.index(no_max.max))
  
  i = 2
  while i < arr.count
    no_max.combination(i).each do |combo|
      if combo.reduce(:+) == arr.max
        return true
      end
    end
    
    i += 1
  end
  
  return false
end
