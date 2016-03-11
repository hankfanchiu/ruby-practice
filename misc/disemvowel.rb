# Write a function disemvowel(string), which takes in a string,
# and returns that string with all the vowels removed.
#
# Treat "y" as a consonant.

def disemvowel(string)
  disemvoweled = ""

  string.each_char do |char|
    next if vowel?(char)

    disemvoweled << char
  end

  disemvoweled
end

def vowel?(letter)
  letter =~ /[aeiouAEIOU]/
end

# Test cases
puts disemvowel("foobar") == "fbr"
puts disemvowel("ruby") == "rby"
puts disemvowel("aeiou") == ""
