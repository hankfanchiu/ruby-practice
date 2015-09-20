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

  n1 = 1
  n2 = 2

  sum = 0
  while n2 <= num
    sum += n2 if n2.even?
    n1, n2 = n2, (n2 + n1)
  end

  sum
end


puts even_fibonacci_sum(10) == 10
puts even_fibonacci_sum(90) == 44
puts even_fibonacci_sum(4000000) == 4613732
