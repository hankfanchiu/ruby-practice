# Define a function that takes an integer as the inputs,
# and outputs all possible permutations.

# Recursive function:
def permute(arr)
  return [arr] if arr.empty?

  permutations = []

  0.upto(arr.length - 1) do |idx|
    removed = arr[idx]
    remaining = arr.take(idx) + arr.drop(idx + 1)

    permute(remaining).each { |sub| permutations << [removed] + sub }
  end

  permutations
end

# Test cases:
p permute([0, 1])
p permute([0, 0, 0])
p permute([98, 99, 100, 101])
