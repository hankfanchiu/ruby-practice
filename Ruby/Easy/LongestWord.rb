# Have the function LongestWord(sen) take the sen parameter being passed
# and return the largest word in the string.
#
# If there are two or more words that are the same length,
# return the first word from the string with that length.
#
# Ignore punctuation and assume sen will not be empty.

def LongestWord(sen)

  longest = ""

  sen.split.each do |word|
    longest = word if word.length > longest.length
  end

  return longest
end

# Test cases:
puts(
  'LongestWord("short longest") == "longest": ' +
  (LongestWord('short longest') == 'longest').to_s
)
puts(
  'LongestWord("one") == "one": ' +
  (LongestWord('one') == 'one').to_s
)
puts(
  'LongestWord("abc def abcde") == "abcde": ' +
  (LongestWord('abc def abcde') == 'abcde').to_s
)
