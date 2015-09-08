# Have the function StringScramble(str1,str2) take both parameters being passed
# and return the string true if a portion of str1 characters can be rearranged
# to match str2, otherwise return the string false.
#
# For example: if str1 is "rkqodlw" and str2 is "world"
# the output should return true.
#
# Punctuation and symbols will not be entered with the parameters.

def StringScramble(str1,str2)

  arr1 = str1.split('')

  str2.chars.each do |letter|
    unless arr1.include?(letter)
      return false
    end

    arr1.slice!(arr1.index(letter))
  end

  return true
end


# Test cases:
puts StringScramble("rkqodlw", "world")
puts StringScramble("hankfanchiuisawesome", "jason")
