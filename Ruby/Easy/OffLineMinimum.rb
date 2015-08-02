# Have the function OffLineMinimum(strArr) take the strArr parameter being passed which will be an array
# of integers ranging from 1...n and the letter "E" and return the correct subset based on the following rules.
# The input will be in the following format: ["I","I","E","I",...,"E",...,"I"]
# where the I's stand for integers and the E means take out the smallest integer currently in the whole set.

# When finished, your program should return that new set with integers separated by commas.
# For example: if strArr is ["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5. 

def OffLineMinimum(strArr)

  tempArr = []
  subsetArr = []
  
  while strArr.include? 'E'
    strArr.each do |element|
      if element != 'E'
        # Append all elements before first instance of 'E' to temporary array for sorting.
        tempArr << element
      else
        # Remove first instance of 'E' for next iteration.
        strArr.slice!(strArr.index(element))
        break
      end
    end
      
    # Select minimum element and append to final array answer.
    subsetArr << min = tempArr.min
    
    # Remove minimum element from temporary and original arrays for next iteration.
    strArr.slice!(strArr.index(min))
    tempArr = []
  end
  
  return subsetArr.join(',')
end


# Revised version that does not loop:
def OffLineMinimumII(strArr)

  integers = []
  results = []
  
  strArr.each do |element|
    if element != 'E'
      # Append all elements before first instance of 'E' to temporary array for sorting.
      integers << element
    else
      # Append minimum element from temporary array to results.
      results << integers.min
      # Remove minimum element from temporary array for next instance of 'E'.
      integers.slice!(integers.index(integers.min))
    end
  end
  
  return results.join(',')
end
