# The sequence of triangle numbers is generated by adding the natural numbers.
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
#
# The first ten terms would be:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number
# to have over five hundred divisors?

# Brute force with trial division (slow):
def divisible_triangular(num)

  triangular = 1
  increment = 1

  count = 0
  while count <= num
    count = 0
    increment += 1
    triangular += increment

    n = 1
    while n <= Math.sqrt(triangular)
      count += 2 if triangular % n == 0
      n += 1
    end

    if (Math.sqrt(triangular) ** 2) == triangular
      count -=1
    end
  end

  triangular
end

puts divisible_triangular(5) == 28


# Any integer N can be expressed as follows:
#
#   N = p1^a1 * p2^a2 * p3^a3 * ...
#
# where 'pn' is a distinct prime number, and 'an' is its exponent.
#
# Furthermore, the number of divisors D(N) of any integer N is:
#
#   D(N) = (a1 + 1) * (a2 + 1) * (a3 + 1) * ...
#
# 'an' being the exponents of the distinct prime numbers which are factors of N.


# Optimized given an array of primes up to 65500:
def divisible_triangular_2(num)

  primes = prime_arr(65500)
  triangular = 1
  increment = 1

  count = 0
  while count < num
    count = 1
    increment += 1
    triangular += increment
    triangular_dup = triangular

    primes.each do |prime|
      if (prime ** 2) > triangular_dup
        count *= 2
        break
      end

      exponent = 1
      while triangular_dup % prime == 0
        triangular_dup /= prime
        exponent += 1
      end

      count *= exponent
      break if triangular_dup == 1
    end
  end

  triangular
end

require 'prime'

def prime_arr(num)

  # 2 is a known prime:
  primes = [2]

  test = 1
  while test <= num
    # All primes except 2 are odd, so increment by 2:
    test += 2
    primes << test if test.prime?
  end

  primes
end


puts divisible_triangular_2(6) == 28
puts divisible_triangular_2(500)
