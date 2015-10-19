# Have the function FibonacciChecker(num) return the string yes,
# if the number given is part of the Fibonacci sequence.
#
# This sequence is defined by: Fn = Fn-1 + Fn-2,
# which means to find Fn you add the previous two numbers up.
#
# The first two numbers are 0 and 1, then comes 1, 2, 3, 5 etc.
# If num is not in the Fibonacci sequence, return the string no.

def FibonacciChecker(num)

  # A positive integer z is a Fibonacci number if and only if
  # one of 5z^2 + 4 or 5z^2 − 4 is a perfect square.
  if is_square?(5 * (num ** 2) + 4) or is_square?(5 * (num ** 2) - 4)
    return "yes"
  else
    return "no"
  end
end

def is_square?(num)

  square_root = Math.sqrt(num).to_i

  return square_root ** 2 == num
end
