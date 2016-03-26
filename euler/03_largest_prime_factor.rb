# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num)
  factor = 2
  largest_prime_factor = 1

  while factor * factor <= num
    if num % factor == 0
      largest_prime_factor = factor
      num /= factor
    else
      factor += (factor == 2 ? 1 : 2)
    end
  end

  num > largest_prime_factor ? num : largest_prime_factor
end


puts largest_prime_factor(13195) == 29
puts largest_prime_factor(600851475143)
