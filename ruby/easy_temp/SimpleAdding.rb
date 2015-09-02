# Have the function SimpleAdding(num) add up all the numbers from 1 to num.

# For the test cases, the parameter num will be any number from 1 to 1000.

def SimpleAdding(num)

  arr = (1..num).to_a

  return arr.inject(:+)
end


# App Academy prep-work:
def sum_nums(num)

  result = 0

  i = 1
  while i <= num
    result += i
    i += 1
  end

  return result
end


# Test cases:
puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)
