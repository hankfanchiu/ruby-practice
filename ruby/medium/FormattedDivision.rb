# Have the function FormattedDivision(num1,num2) take both parameters
# being passed, divide num1 by num2, and return the result as a string
# with properly formatted commas and 4 significant digits
# after the decimal place.
#
# For example: if num1 is 123456789 and num2 is 10000
# the output should be "12,345.6789".
#
# The output must contain a number in the one's place even if it is a zero.

def FormattedDivision(num1, num2)

  # Calculate quotient to four decimal places.
  quotient = '%.4f' % (num1 / num2.to_f)

  # Reverse quotient and split to characters for parsing.
  quo = quotient.reverse.split(//)

  # Append reversed decimal places (and decimal point) to new array.
  answer = Array.new
  answer << quo.shift(5)

  # Join reversed integer places with commas for every three places.
  answer << quo.each_slice(3).map(&:join).join(',')

  return answer.join.reverse
end


def FormattedDivision_2(num1, num2)

  quotient = num1 / num2.to_f
  quotient = sprintf("%.4f", quotient)

  i = quotient.length - 8
  while i > 0
    quotient.insert(i, ",")

    i -= 3
  end

  return quotient
end


# Test cases:
puts FormattedDivision(123456789, 10000)

puts FormattedDivision_2(123456789, 10000)
