# Using the Ruby language, have the function LookSaySequence(num)
# take the num parameter being passed and return the next number
# in the sequence according to the following rule: to generate the next number
# in a sequence read off the digits of the given number,
# counting the number of digits in groups of the same digit.
#
# For example, the sequence beginning with 1 would be: 1, 11, 21, 1211, ...
# The 11 comes from there being "one 1" before it and
# the 21 comes from there being "two 1's" before it.
#
# So your program should return the next number in the sequence given num.

def LookSaySequence(num)

  answer = []
  counter = 1

  digits = num.to_s.split('')
  digits.each_with_index do |n, i|
    if n == digits[i + 1]
      counter += 1
    else
      answer << counter.to_s
      answer << n
      counter = 1
    end
  end

  return answer.join.to_i
end

puts LookSaySequence(1211)
# => 111221

