# Write a function lucky_sevens?(numbers), which takes in an array of integers
# and returns true if any three consecutive elements sum to 7.

def lucky_sevens?(numbers)
  numbers.each_cons(3) do |nums|
    return true if nums.inject(:+) == 7
  end

  false
end

# Test cases:
puts lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7
puts lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7
puts lucky_sevens?([7,7,7,7]) == false
puts lucky_sevens?([3,4,3,4]) == false
