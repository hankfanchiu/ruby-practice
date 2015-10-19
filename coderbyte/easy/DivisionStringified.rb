# Have the function DivisionStringified(num1,num2) take both parameters
# being passed, divide num1 by num2, and return the result as a string
# with properly formatted commas.
#
# If an answer is only 3 digits long, return the number with no commas
# (ie. 2 / 3 should output "1").
#
# For example: if num1 is 123456789 and num2 is 10000
# the output should be "12,345".

def DivisionStringified(num1,num2)

  quotient = (num1 / num2.to_f).ceil.to_s

  # Split quotient into reversed array of digits
  split = quotient.reverse.chars

  # Join array above into number string with commas
  joined = split.each_slice(3).map(&:join).join(',')

  return joined.reverse
end


def DivisionStringified_2(num1, num2)

  quotient = nil

  if (num1 / num2) < 1
    quotient = (num1 / num2.to_f).round.to_s
  else
    quotient = (num1 / num2).to_s
  end

  i = quotient.length - 3
  while i > 0
    quotient.insert(i, ",")

    i -= 3
  end

  return quotient
end


# Test cases:
puts DivisionStringified(2, 3)
puts DivisionStringified(123456789, 10000)

puts DivisionStringified_2(2, 3)
puts DivisionStringified_2(123456789, 10000)
