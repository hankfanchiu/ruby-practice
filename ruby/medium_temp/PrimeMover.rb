# Have the function PrimeMover(num) return the numth prime number.
# The range will be from 1 to 10^4.
#
# For example: if num is 16 the output should be 53
# as 53 is the 16th prime number.

def PrimeMover(num)

  prime = 2
  counter = 0

  for n in 1..10 ** 4
    if prime?(n)
      prime = n
      counter += 1
    end

    if num == counter
      return prime
    end
  end
end

# Standalone method to check if a number is a prime number.
def prime?(n)

  if n < 2
    return false
  end

  for i in 2..Math.sqrt(n)
    if n % i == 0
      return false
    end
  end

  return true
end
