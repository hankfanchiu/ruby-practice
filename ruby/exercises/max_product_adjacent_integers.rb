# Given a large integer (num) and a number of digits (digits)
# find the greatest product of the number of adjacent digits.
#
# Assume that none of the digits in the input number is a zero.

def max_product(num, digits)

  integers = num.to_s.split('').map(&:to_i)
  product = integers[0, digits].inject(:*)
  max = product

  i = 0
  while i < integers.count - digits
    product /= integers[i]
    product *= integers[i + digits]

    max = product if product > max

    i += 1
  end

  max
end
