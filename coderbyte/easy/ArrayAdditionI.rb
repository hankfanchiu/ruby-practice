# Have the function ArrayAdditionI(arr) take the array of numbers stored
# in arr and return the string true if any combination of numbers
# in the array can be added up to equal the largest number in the array,
# otherwise return the string false.

# For example: if arr contains [4, 6, 23, 10, 1, 3]
# the output should return true because 4 + 6 + 10 + 3 = 23.

# The array will not be empty, will not contain all the same elements,
# and may contain negative numbers.

def ArrayAdditionI(arr)

  i = 2
  while i < arr.count
    if arr.combination(i).any? { |combo| combo.reduce(:+) == arr.max }
      return true
    end
    i += 1
  end

  return false
end


def ArrayAdditionI_2(arr)

  n = 2
  while n < arr.count
    arr.combination(n).each do |combo|
      if combo.inject(:+) == arr.max
        return true
      end
    end

    n += 1
  end

  return false
end


# Test cases:
puts ArrayAdditionI([4, 6, 23, 10, 1, 3])
puts ArrayAdditionI([2, 6, 40, 10, 1, 3])

puts ArrayAdditionI_2([4, 6, 23, 10, 1, 3])
puts ArrayAdditionI_2([2, 6, 40, 10, 1, 3])
