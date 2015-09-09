# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def word_unscrambler(str, words)

  answer = words.select do |word|
    str.split("").sort == word.split("").sort
  end

  return answer
end


# Test cases:
# it handles a simple word
p word_unscrambler("cat", ["tac"])
#=> ["tac"]

# it does not inappropriately choose a word
p word_unscrambler("cat", ["tom"])
#=> []

# it handles a simple word from a larger dictionary
p word_unscrambler("cat", ["tic", "toc", "tac", "toe"])
#=> ["tac"]

# it only handles words of the correct length
p word_unscrambler("cat", ["scatter", "tac", "ca"])
#=> ["tac"]

# it handles multiple successful cases
p word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])
#=> ["turn", "runt", "nurt"]
