# square_nums
#
# Write a method square_nums that takes a number max
# and returns the number of perfect squares less than max.
#
# Do not use Math.sqrt(x) or x ** 0.5;
# we don't want you to calculate square roots for this problem.
#
# You will, however, want to find squares (x * x is fine).


def square_nums(number)

  count = 0
  n = 1
  while (n * n) < number
    puts n
    count += 1
    n += 1
  end

  return count
end

puts square_nums(5) == 2
puts square_nums(10) == 3
puts square_nums(25) == 4
puts square_nums(55)
