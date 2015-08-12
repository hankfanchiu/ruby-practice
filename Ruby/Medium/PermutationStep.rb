# Have the function PermutationStep(num) take the num parameter being passed
# and return the next number greater than num using the same digits.

# For example: if num is 123 return 132, if it's 12453 return 12534.
# If a number has no greater permutations, return -1 (ie. 999).

def PermutationStep(num)

  greater = []
  
  # Any number derived from permutating the digits of num
  # and is greater than num is appended to a new array
  num.to_s.split(//).permutation.each do |x|
    if x.join.to_i > num
      greater << x.join.to_i
    end
  end

  greater.min ? greater.min : -1
end
