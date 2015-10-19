# Have the function Palindrome(str) take the str parameter being passed
# and return the string true if the parameter is a palindrome,
# (the string is the same forward as it is backward)
# otherwise return the string false.
#
# For example: "racecar" is also "racecar" backwards.
# Punctuation and numbers will not be part of the string.

def Palindrome(str)

  return true if str.gsub!(" ","") == str.reverse
  return false
end


# App Academy prep-work:
def palindrome?(string)

  i = 0
  while i < string.length
    return false if string[i] != string[-1 - i]
    i += 1
  end

  return true
end


# Test cases:
puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
