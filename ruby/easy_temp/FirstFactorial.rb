# Have the function FirstFactorial(num) take the num parameter being passed
# and return the factorial of it (ie. if num = 4, return (4 * 3 * 2 * 1)).
#
# For the test cases, the range will be between 1 and 18.

def FirstFactorial(num)

  if num < 1
    return 1
  end

  result = 1
  while num > 0
    result *= num
    num -= 1
  end

  return result
end

puts(
  'FirstFactorial(0) == 1: ' + (FirstFactorial(0) == 1).to_s
)
puts(
  'FirstFactorial(1) == 1: ' + (FirstFactorial(1) == 1).to_s
)
puts(
  'FirstFactorial(2) == 2: ' + (FirstFactorial(2) == 2).to_s
)
puts(
  'FirstFactorial(3) == 6: ' + (FirstFactorial(3) == 6).to_s
)
puts(
  'FirstFactorial(4) == 24: ' + (FirstFactorial(4) == 24).to_s
)
