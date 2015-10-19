# Have the function MultiplicativePersistence(num) take the num parameter
# being passed which will always be a positive integer
# and return its multiplicative persistence which is the number of times
# you must multiply the digits in num until you reach a single digit.
#
# For example: if num is 39 then your program should return 3 because 3 * 9 = 27
# then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4.

def MultiplicativePersistence(num)

  reduced = num
  counter = 0

  until reduced.to_s.size == 1
    # Replace the parameter with product of its digits
    reduced = num.to_s.chars.map(&:to_i).reduce(:*)
    counter += 1
  end

  return counter
end
