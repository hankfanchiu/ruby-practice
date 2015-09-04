# Define a function that takes an array and an integer as the inputs,
# and outputs all possible permutations with the integer input
# as the number of elements in each permutation.
#
# For example, given [1, 2, 3] and 2 as the inputs,
# the output should be: [1, 2], [1, 3], [2, 1], [2, 3].

# Recursive function:
def permute(arr)

  # Simply returning "arr" would return only the element of the array,
  # therefore be sure to return the element in an array data structure.
  return [arr] if arr.count < 2

  results = []
  arr.each do |element|
    remaining = arr.dup
    remaining.delete_at(arr.index(element))

    permute(remaining).each do |rearranged|
      rearranged.unshift(element)
      results << rearranged
    end
  end

  return results
end

# Test cases:
p permute([0, 1])
p permute([0, 0, 0])
p permute([98, 99, 100, 101])
