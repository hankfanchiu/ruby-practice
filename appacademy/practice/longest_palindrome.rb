# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

# App Academy prep-work:
def longest_palindrome(string)

  return string if palindrome?(string)

  longest = ""

  i = 0
  while i < string.length
    slice_length = string.length - 1

    while slice_length > 0
      substring = string.slice(i, slice_length)

      if palindrome?(substring) && substring.length > longest.length
        longest = substring
      end

      slice_length -= 1
    end

    i += 1
  end

  return longest
end

# Check if a string is a palindrome (previous exercise):
def palindrome?(string)

  i = 0
  while i < string.length
    return false if string[i] != string[-1 - i]
    i += 1
  end

  return true
end


# Test cases:
puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
