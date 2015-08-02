# Have the function PrimeMover(num) return the numth prime number. The range will be from 1 to 10^4.
# For example: if num is 16 the output should be 53 as 53 is the 16th prime number. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

def PrimeMover(num)
  
  primes = []
  
  for n in 2..10 ** 4
    if IsPrime(n)
      primes << n
    end
    
    if primes.count == num
      break
    end
  end
  
  return primes[num - 1]
end


def IsPrime(num)
  
  for i in 2..Math.sqrt(num)
    if num % i == 0
      return false
    end
  end
  
  return true
end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
PrimeMover(STDIN.gets) 
