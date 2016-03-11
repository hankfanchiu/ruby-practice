# Given a large integer (`integer`) and a number of digits (`num_of_digits`)
# find the greatest product of the number of adjacent digits.
#
# Assume that none of the digits in the input number is a zero.

def max_product(integer, num_of_digits)
  digits = split_to_digits(integer)
  end_index = digits.size - num_of_digits - 1
  max_product = digits[0...num_of_digits].inject(:*)

  0.upto(end_index) do |index|
    product /= digits[index]
    product *= digits[index + digits]

    max_product = product if product > max_product
  end

  max_product
end

def split_to_digits(integer)
  reversed_digits = []

  while integer > 0
    digit = integer % 10
    reversed_digits << digit
    integer /= 10
  end

  reversed_digits.reverse
end
