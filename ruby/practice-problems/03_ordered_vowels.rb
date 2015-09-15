# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_words(str)

  answer = str.split.select do |word|
    ordered_vowel_word?(word)
  end

  return answer.join(" ")
end

# Helper function:
def ordered_vowel_word?(word)

  vowels = word.scan(/[aeiou]/)

  if vowels == vowels.sort
    return true
  else
    return false
  end
end

# Test cases:
# it returns a word that is in order
puts ordered_vowel_words("amends")
#=> "amends"

# it does not return a word that is not in order
puts ordered_vowel_words("complicated")
#=> ""

# it handles double vowels
puts ordered_vowel_words("afoot")
#=> "afoot"

# it handles a word with a single vowel
puts ordered_vowel_words("ham")
#=> "ham"

# it handles a word with no vowel
puts ordered_vowel_words("crypt")
#=> "crypt"

# it handles a word with a single letter
puts ordered_vowel_words("o")
#=> "o"

# it ignores the letter y
puts ordered_vowel_words("tamely")
#=> "tamely"

# it processes a string with several words
puts ordered_vowel_words("this is a test of the vowel ordering system")
#=> "this is a test of the system"
