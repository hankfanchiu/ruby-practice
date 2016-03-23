# Write a function disemvowel(string), which takes in a string,
# and returns that string with all the vowels removed.
#
# Treat "y" as a consonant.

def disemvowel(str)
  disemvoweled = ""

  str.each_char { |char| disemvoweled << char unless char =~ /[aeiouAEIOU]/ }

  disemvoweled
end

# Test cases
puts disemvowel("foobar") == "fbr"
puts disemvowel("ruby") == "rby"
puts disemvowel("aeiou") == ""
