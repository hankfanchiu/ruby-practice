# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num)
  x = 2
  largest = 1

  while x * x <= num
    if num % x == 0
      largest = x
      num /= x
    else
      x += (x == 2 ? 1 : 2)
    end
  end

  num > largest ? num : largest
end


puts largest_prime_factor(13195) == 29
puts largest_prime_factor(600851475143)
