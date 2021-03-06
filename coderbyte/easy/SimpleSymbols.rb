# Have the function SimpleSymbols(str) take the str parameter being passed
# and determine if it is an acceptable sequence
# by either returning the string true or false.
#
# The str parameter will be composed of + and = symbols with several letters
# between them (ie. ++d+===+c++==a) and for the string to be true,
# each letter must be surrounded by a + symbol.
#
# So the string to the left would be false.
# The string will not be empty and will have at least one letter.

def SimpleSymbols(str)

  if str.match(/\+\w\+[\w\+]*/) != nil
    return true
  else
    return false
  end
end


def SimpleSymbols_2(str)

  i = 0
  while i < str.length
    if str[i] =~ /[[:alpha:]]/
      if str[i - 1] != "+" or str[i + 1] != "+"
        return false
      end
    end

    i += 1
  end

  return true
end


# Test cases:
puts SimpleSymbols("++d+===+c++==a") #=> false
puts SimpleSymbols("++d+===+c++==+a+") #=> true

puts SimpleSymbols_2("++d+===+c++==a") #=> false
puts SimpleSymbols_2("++d+===+c++==+a+") #=> true
