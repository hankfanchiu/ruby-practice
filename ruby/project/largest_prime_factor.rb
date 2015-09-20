# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_prime_factor(num)

  test = 2
  while test <= num
    if test.prime? and (num % test == 0)
      best = test
      num /= test
    else
      test += 1
    end
  end

  best
end


# def prime?(num)

#   return false if num < 2

#   (2..Math.sqrt(num)).each do |i|
#     return false if num % i == 0
#   end

#   return true
# end


puts largest_prime_factor(13195) == 29
puts largest_prime_factor(600851475143)
