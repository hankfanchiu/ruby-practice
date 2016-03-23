# Write a method that returns the power set of an array input.
#
# Pseudo-algorithm:
# Is the array passed empty? Done.
# If not, take an element out
#   - recursively call method on the remainder of the set
#   - return the set composed of the Union of
#     (1) the powerset of the set without the element (from the recursive call)
#     (2) this same set (i.e., (1)) but with each element therein unioned
#         with the element initially taken out
#
# Example: array = [1, 2, 3]
# Output = [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]

def powerset(arr)
  return [arr] if arr.empty?

  removed_element = arr.first
  remainder = arr.drop(1)
  subset = powerset(remainder)

  subset + subset.map { |subset| [removed_element] + subset }
end

p powerset([1, 2, 3])
p powerset([0])
p powerset([])
