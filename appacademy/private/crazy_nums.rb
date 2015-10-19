# crazy_nums
#
# Write a method crazy_nums that takes a number, max,
# and returns an array of the integers that
#
# ARE less than max
# AND ARE divisible by either three or five
# BUT ARE NOT divisible by both three and five
# You should return the result in increasing order.
#
# You may wish to use the modulo operation:
# 5 % 2 returns the remainder when dividing 5 by 2: 1.
# If num is divisible by i, then num % i == 0.

def crazy_nums(number)

  answer = []

  n = 1
  while n < number
    if (n % 3 == 0) && (n % 5 != 0)
      answer << n
    elsif (n % 5 == 0) && (n % 3 != 0)
      answer << n
    end

    n += 1
  end

  return answer
end


puts crazy_nums(3) == []
puts crazy_nums(10) == [3, 5, 6, 9]
puts crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]
p crazy_nums(11)
