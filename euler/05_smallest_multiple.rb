# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

def smallest_multiple(num1, num2)
  (num1..num2).inject do |smallest_multiple, num|
    gcf = greatest_common_factor(smallest_multiple, num)

    (smallest_multiple * num).abs / gcf
  end
end

def greatest_common_factor(num1, num2)
  until num2.zero?
    num1, num2 = num2, num1 % num2
  end

  num1.abs
end

puts smallest_multiple(1, 10) == 2520
puts smallest_multiple(1, 20)
