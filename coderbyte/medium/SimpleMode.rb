# Have the function SimpleMode(arr) take the array of numbers stored in arr
# and return the number that appears most frequently (the mode).
#
# For example: if arr contains [10, 4, 5, 2, 4] the output should be 4.
#
# If there is more than one mode return the one that appeared in the array first
# (ie. [5, 10, 10, 6, 5] should return 5 because it appeared first).
#
# If there is no mode return -1. The array will not be empty.

def SimpleMode(arr)

  return -1 if arr == arr.uniq

  counts = Hash.new(0)
  arr.each { |number| counts[number] += 1 }

  return arr.max_by { |n| counts[n] }
end


# Test cases:
puts SimpleMode([10, 4, 5, 2, 4]) #=> 4
puts SimpleMode([5, 10, 10, 6, 5]) #=> 5
