# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

require 'prime'

def prime_number(num)

  # 2 is a known prime:
  count = 1
  test = 1
  until count == num
    # All primes except 2 are odd, so increment by 2:
    test += 2
    count += 1 if test.prime?
  end

  test
end


puts prime_number(6) == 13
puts prime_number(10001)
