# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

# Rubyist:
def smallest_multiple(num1, num2)

  (num1..num2).reduce(:lcm)
end


puts smallest_multiple(1, 10) == 2520
puts smallest_multiple(1, 20)


# Maths:
def gcf(num1, num2)

  until num2 == 0
    num1, num2 = num2, (num1 % num2)
  end

  num1.abs
end

def lcm(num1, num2)

  (num1..num2).inject do |lcm, n|
    (lcm * n).abs / gcf(lcm, n)
  end
end


puts lcm(1, 10) == 2520
puts lcm(1, 20)
