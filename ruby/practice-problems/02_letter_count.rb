# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(str)

  freq = Hash.new(0)
  str.each_char { |char| freq[char] += 1 unless char == " " }

  return freq
end


# Test cases:
# handles a simple case:
puts letter_count("cat")
#=> {
#   "c" => 1,
#   "a" => 1,
#   "t" => 1
# }

# handles multiples of the same letter:
puts letter_count("moon")
# #=> {
#   "m" => 1,
#   "o" => 2,
#   "n" => 1
# }

# handles a multi-word case
puts letter_count("cats are fun")
#=> {
#   "a" => 2,
#   "c" => 1,
#   "e" => 1,
#   "f" => 1,
#   "n" => 1,
#   "r" => 1,
#   "s" => 1,
#   "t" => 1,
#   "u" => 1
# }
