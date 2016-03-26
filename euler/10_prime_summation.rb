# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

def prime_summation(limit)
  prime_sum = 2
  num = 3

  while num < limit
    prime_sum += num if num.prime?

    num += 2
  end

  prime_sum
end


puts prime_summation(10) == 17


# The sieve of Eratosthenes:
def prime_summation_2(limit)

  # Make a boolean array from index 0 to limit, defaulting to false:
  sieve = (0..limit).map { |element| element = false }

  # Mark all even indices beginning with 4 as true:
  even_index = 4

  while even_index <= limit
    sieve[even_index] = true
    even_index += 2
  end

  # Mark all multiples, beginning with index 3, as true:
  num = 3
  limit_square_root = Math.sqrt(limit)

  while num < limit_square_root
    unless sieve[num]
      square = num * num

      while square < limit
        sieve[square] = true

        # Odd numbers only:
        square += (num * 2)
      end
    end

    # Odd numbers only:
    num += 2
  end

  prime_sum = 0

  # Sum the indices of true elements (primes):
  2.upto(limit) { |element| prime_sum += element unless sieve[element] }

  prime_sum
end


puts prime_summation_2(10) == 17
puts prime_summation_2(2000000)
