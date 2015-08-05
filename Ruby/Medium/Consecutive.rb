# Have the function Consecutive(arr) take the array of integers stored in arr and return the minimum number
# of integers needed to make the contents of arr consecutive from the lowest number to the highest number.

# For example: If arr contains [4, 8, 6] then the output should be 2 because two numbers need to be added
# to the array (5 and 7) to make it a consecutive array of numbers from 4 to 8.

# Negative numbers may be entered as parameters and no array will have less than 2 elements. 

# Brute-force, ineffecient method that does not take into account of the range of the number array:
def Consecutive(arr)

  counter = 0
  
  i = 1
  while i < arr.length
    consecutive = arr.sort[i - 1]
    if arr.sort[i - 1] + 1 != arr.sort[i]
      while consecutive != arr.sort[i] - 1
        consecutive += 1
        counter += 1
      end
    end
    i += 1
  end

  return counter
end


# Smarter, more efficient method that utilizes the given array's range:
def Consecutive(arr)
  
  # Subtracting the range of the arr by the arr returns all of the missing consecutive numbers.
  missing_numbers = Array(arr.min..arr.max) - arr
  
  return missing_numbers.count
end
