# Using the Ruby language, have the function DistinctList(arr) take the array
# of numbers stored in arr and determine the total number of duplicate entries.
#
# For example if the input is [1, 2, 2, 2, 3] then your program should output 2
# because there are two duplicates of one of the elements.

def DistinctList(arr)

  numbers = {}
  duplicates = 0

  arr.each do |num|
    if numbers[num]
      duplicates += 1
    else
      numbers[num] = true
    end
  end

  return duplicates
end

puts DistinctList([0,-2,-2,5,5,5])
# => 3

puts DistinctList([100,2,101,4])
# => 0
