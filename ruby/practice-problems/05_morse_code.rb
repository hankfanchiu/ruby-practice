# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5

def morse_encode(str)
end


# Test cases:
# it should do a simple letter
puts morse_encode("q")
#=> "--.-"

# it should handle a small word
puts morse_encode("cat")
#=> "-.-. .- -"

# it should handle a phrase
puts morse_encode("cat in hat")
#=> "-.-. .- -  .. -.  .... .- -"
