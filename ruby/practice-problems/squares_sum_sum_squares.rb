# Given some number, find the difference between
# the sum of the squares of the integers from 1 to number,
# and the square of the sum of the integers from 1 to number.

def squares_sum_sum_squares(number)

  sum_of_squares = (1..number).map { |num| num ** 2 }.inject(:+)
  square_of_sum = ((1..number).inject(:+)) ** 2

  square_of_sum - sum_of_squares
end

puts squares_sum_sum_squares(10) == 2640
