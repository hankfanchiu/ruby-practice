# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num)

  test = 2
  while test * test <= num
    if num % test == 0
      num /= test
      largest = test
    else
      test == 2 ? test += 1 : test += 2
    end
  end

  largest = num if num > largest

  largest
end


puts largest_prime_factor(13195) == 29
puts largest_prime_factor(600851475143)
