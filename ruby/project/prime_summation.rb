# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

def prime_summation(num)

  sum = 2
  n = 3
  while n < num
    sum += n if n.prime?

    n += 2
  end

  sum
end


puts prime_summation(10) == 17


# The sieve of Eratosthenes:
def prime_summation_2(limit)

  # Make a boolean array from index 0 to limit, defaulting to false:
  sieve = (0..limit).map { |element| element = false }

  # Mark all even indices beginning with 4 as true:
  evens = 4
  while evens <= limit
    sieve[evens] = true
    evens += 2
  end

  # Mark all multiples, beginning with index 3, as true:
  n = 3
  while n < Math.sqrt(limit)
    if not sieve[n]
      m = n * n
      while m < limit
        sieve[m] = true

        # Odd numbers only:
        m += (n * 2)
      end
    end

    # Odd numbers only:
    n += 2
  end

  # Sum the indices of true elements (primes):
  sum = 0
  for p in 2..limit
    sum += p if not sieve[p]
  end

  sum
end


puts prime_summation_2(10) == 17
puts prime_summation_2(2000000)
