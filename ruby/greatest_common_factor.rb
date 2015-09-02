# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

# App Academy prep-work:
def greatest_common_factor(number1, number2)

  gcf = [number1, number2].min
  while gcf > 0
    return gcf if (number1 % gcf == 0) && (number2 % gcf == 0)

    gcf -= 1
  end
end


# Test cases:
puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
