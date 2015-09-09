# Write a function disemvowel(string), which takes in a string,
# and returns that string with all the vowels removed.
# Treat "y" as a consonant.

def disemvowel(string)

  answer = []
  string.each_char do |char|
    answer << char unless char.downcase =~ /[aeiou]/
  end

  return answer.join
end

# Test cases
puts disemvowel("foobar") == "fbr"
puts disemvowel("ruby") == "rby"
puts disemvowel("aeiou") == ""
