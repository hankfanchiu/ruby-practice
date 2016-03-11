# Define a function that takes an integer as the inputs,
# and outputs all possible permutations.

# Recursive function:
def permute(arr)
  return [arr] if arr.empty?

  permutations = []

  0.upto(arr.length - 1) do |idx|
    removed_element = arr[idx]
    remainder = arr.take(idx) + arr.drop(idx + 1)
    sub_permutations = permute(remainder)

    sub_permutations.each { |sub| permutations << [removed_element] + sub }
  end

  permutations
end

# Test cases:
p permute([0, 1])
p permute([0, 0, 0])
p permute([98, 99, 100, 101])
