# Have the function PrimeChecker(num) take num and return 1 if any arrangement of num
# comes out to be a prime number, otherwise return 0.

# For example: if num is 910, the output should be 1 because 910 can be arranged into 109 or 019,
# both of which are primes. 

def PrimeChecker(num)

  num.to_s.split(//).permutation.each do |x|
    if prime?(x.join.to_i)
      return 1
    end
  end
  
  return 0
end

# A separate method for determining if a number is prime:
def prime?(number)
  
  if number < 2
    return false
  end
  
  for i in 2..Math.sqrt(number)
    if number % i == 0
      return false
    end
  end
  
  return true
end
