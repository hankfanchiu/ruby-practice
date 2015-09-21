# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# App Academy prep-work:
def nth_prime(n)

  number = 2
  count = 0

  while true
    if is_prime?(number)
      count += 1
      return number if count == n
    end

    number += 1
  end
end

# Check if a number is prime:
def is_prime?(number)

  return false if number < 1

  i = 2
  while i < number
    return false if number % i == 0
    i += 1
  end

  return true
end


# Test cases:
puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
