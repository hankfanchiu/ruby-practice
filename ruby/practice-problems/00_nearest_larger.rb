# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, i)

  increment = 1
  while increment < arr.count
    left = i - increment
    right = i + increment

    if (left >= 0) && (arr[i] < arr[left])
      return left
    elsif (right < arr.count) && (arr[i] < arr[right])
      return right
    elsif
      increment += 1
    end
  end

  return "nil"
end


# Test cases:
puts nearest_larger([2,3,4,8], 2) #=> 3
puts nearest_larger([2,8,4,3], 2) #=> 1
puts nearest_larger([2,6,4,8], 2) #=> 1
puts nearest_larger([2,6,4,6], 2) #=> 1
puts nearest_larger([8,2,4,3], 2) #=> 0
puts nearest_larger([2,4,3,8], 1) #=> 3
puts nearest_larger([2, 6, 4, 8], 3) #=> nil
puts nearest_larger([2, 6, 9, 4, 8], 3) #=> 2
