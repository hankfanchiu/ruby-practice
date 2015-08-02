# Have the function PowersofTwo(num) take the num parameter being passed which will be an integer
# and return the string true if it's a power of two. If it's not return the string false.
# For example if the input is 16 then your program should return the string true but if the input is 22
# then the output should be the string false. 

def PowersofTwo(num)

  power = Math.log(num) / Math.log(2)
  power % 1 == 0
end


# Another method without using the existing Math module:
def PowersofTwo(num)
  i = 0
  while 2 ** i <= num
    if 2 ** i == num
      return true
    end
    i += 1
  end
  return false
end
