# Have the function MeanMode(arr) take the array of numbers stored in arr
# and return 1 # if the mode equals the mean, 0 if they don't equal each other
# (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)).

# The array will not be empty, will only contain positive integers, and will not contain more than one mode. 


def MeanMode(arr)

  # Determine the mode
  frequency = Hash.new(0)
  arr.each { |number| frequency[number] += 1 }
  mode = arr.max_by { |counts| frequency[counts] }
  
  # Determine the mean
  mean =  arr.reduce(:+) / arr.length
  
  if mode == mean
    return 1
  else
    return 0
  end
end
