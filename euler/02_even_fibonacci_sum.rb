# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms.
#
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million,
# find the sum of the even-valued terms.

def even_fibonacci_sum(num)
  two_before = 1
  one_before = 2
  sum = 0

  while one_before <= num
    sum += one_before if one_before.even?

    new_one_before = one_before + two_before

    two_before = one_before
    one_before = new_one_before
  end

  sum
end


puts even_fibonacci_sum(10) == 10
puts even_fibonacci_sum(90) == 44
puts even_fibonacci_sum(4000000) == 4613732
