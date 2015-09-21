# Given some number, find the difference between
# the sum of the squares of the integers from 1 to number,
# and the square of the sum of the integers from 1 to number.

def squares_sum_sum_squares(num)

  sum = 0
  squares_sum = 0

  (1..num).each do |number|
    sum += number
    squares_sum += number ** 2
  end

  (sum ** 2) - squares_sum
end

puts squares_sum_sum_squares(10) == 2640
puts squares_sum_sum_squares(100)
