# Have the function PrimeTime(num) take the num parameter being passed and
# return the string true if the parameter is a prime number, otherwise return the string false.

# The range will be between 1 and 2^16. 

def PrimeTime(num)

  if num < 2
    return false
  end
  
  i = 2
  while i ** 2 <= num
    if num % i == 0
      return false
    end
    i += 1
  end
  
  return true
end
