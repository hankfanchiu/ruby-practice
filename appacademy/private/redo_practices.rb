# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, i)

  increment = 1
  while increment < arr.count
    left = i - increment
    right = i + increment

    if (left >= 0) and (arr[i] < arr[left])
      return left
    elsif (right < arr.count) and (arr[i] < arr[right])
      return right
    else
      increment += 1
    end
  end

  return "nil"
end


# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)

  arr = (year_start..year_end).to_a

  arr.select { |year| no_repeat?(year) }
end


def no_repeat?(year)

  arr = year.to_s.split('')

  arr == arr.uniq
end


# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(str)

  hash = Hash.new(0)

  str.each_char do |char|
    hash[char] += 1 if char =~ /[[:alpha:]]/
  end

  hash
end


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

  result = str.split.select { |word| ordered_vowel_word?(word) }
  result.join(' ')
end

def ordered_vowel_word?(word)

  vowels = word.scan(/[aeiou]/)
  vowels == vowels.sort
end


# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

def wonky_coins(n)

  return 1 if n == 0

  return wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end


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

morse_code = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--.."
  }

def morse_encode(str)

  result = str.split.map { |word| morse_encode_word(word) }

  result.join('  ')
end

def morse_encode_word(word)

  encoded_word = word.split('').map { |l| morse_code[l.downcase] }

  encoded_word.join(' ')
end


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

  unscrambled = str.split('').sort

  words.select { |word| word.split('').sort == unscrambled }
end


# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5

def rec_intersection(rect1, rect2)

  x_min = [rect1[0][0], rect2[0][0]].max
  x_max = [rect1[1][0], rect2[1][0]].min

  y_min = [rect1[0][1], rect2[0][1]].max
  y_max = [rect1[1][1], rect2[1][1]].min

  if (x_max < x_min) or (y_max < y_min)
    return nil
  else
    return [[x_min, y_min], [x_max, y_max]]
  end
end


# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr)

  j = arr.count - 1
  while j > 0
    i = 0

    while i < j
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end

      i += 1
    end

    j -= 1
  end

  arr
end


# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)

  string.split.map(&:capitalize).join(' ')
end


# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)

  arr = num.to_s.split('').map(&:to_i)

  result = []

  i = 0
  while i < arr.length
    current_digit = arr[i]
    previous_digit = arr[i - 1]

    if i > 0
      if previous_digit.odd? || current_digit.odd?
        result << '-'
      end
    end

    result << current_digit

    i += 1
  end

  result.join
end


# Write a function disemvowel(string), which takes in a string,
# and returns that string with all the vowels removed.
# Treat "y" as a consonant.

def disemvowel(string)

  result = string.split('').select do |char|
    char.downcase !~ /[aeiou]/
  end

  result.join
end


# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)

  minimum = [number1, number2].min

  minimum.downto(1).to_a.find do |i|
    (number1 % i == 0) and (number2 % i == 0)
  end
end


# Write a method that takes two string inputs, and returns a list of all
# characters that are intersected by the two strings (i.e. found in both).
#
# Return each intersecting character with only the minimum number of
# intersecting occurances (e.g. if "a" occurs three times in the first string
# and four times in the second string, return "a" three times in the answer).
#
# The method should be case-insensitive.

def intersection(str1, str2)

  hash1 = Hash.new(0)
  str1.each_char do |c|
    hash1[c.downcase] += 1 if c.downcase =~ /[[:alpha:]]/
  end

  result = []

  str2.each_char do |c|
    if hash1[c.downcase] > 0
      result << c
      hash1[c.downcase] -= 1
    end
  end

  result
end


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

def longest_palindrome(string)

  longest = ''

  i = 0
  while i < string.length

    length = string.length - i
    while length > 0
      substring = string.slice(i, length)

      if substring == substring.reverse
        longest = substring if substring.length > longest.length
      end

      length -= 1
    end

    i += 1
  end

  longest
end


# Write a function lucky_sevens?(numbers), which takes in an array of integers
# and returns true if any three consecutive elements sum to 7.

def lucky_sevens?(numbers)

  numbers.each_cons(3) do |threes|
    return true if threes.inject(:+) == 7
  end

  return false
end


# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

  hash = Hash.new(0)
  string.each_char do |c|
    hash[c.downcase] += 1 if c =~ /[[:alpha:]]/
  end

  return hash.max_by { |letter, count| count }
end


# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)

  counts = Hash.new(0)
  string.ecah_char { |letter| counts[letter] += 1 }

  counts.select { |letter, count| count > 0 }.count
end


# Define a function that takes an integer as the inputs,
# and outputs all possible permutations.

def permute(arr)

  return [arr] if arr.count < 2

  result = []

  arr.each do |element|
    remaining = arr.dup
    remaining.delete_at(arr.index(element))

    permute(remaining).each do |rearranged|
      rearranged.unshift(element)
      result << rearranged
    end
  end

  result
end


# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

def scramble_string(string, positions)

  result = ''
  positions.each { |index| result += string[index] }

  result
end


# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)

  nums.sort[-3]
end


# Recursive binary search method:
def binary_search1(arr, t, i_start = 0, i_end = arr.count - 1)

  m = (i_start + i_end) / 2

  if t == arr[m]
    return true
  elsif i_start == i_end
    return false
  elsif t < arr[m]
    binary_search1(arr, t, i_start, m)
  elsif t > arr[m]
    binary_search1(arr, t, m + 1, i_end)
  end
end


# Have the function AdditivePersistence(num) take the num parameter being
# passed which will always be a positive integer and return its additive
# persistence which is the number of times you must add the digits in num
# until you reach a single digit.
#
# For example: if num is 2718 then your program should return 2 because
# 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9.

def AdditivePersistence(num)

  counter = 0

  until num.to_s.length == 1
    num = num.to_s.split('').map(&:to_i).inject(:+)

    counter += 1
  end

  counter
end


# Using the Ruby language, have the function ArithGeo(arr) take the array
# of numbers stored in arr and return the string "Arithmetic" if the sequence
# follows an arithmetic pattern or return "Geometric" if it follows
# a geometric pattern.
#
# If the sequence doesn't follow either pattern return -1.
#
# An arithmetic sequence is one where the difference between each
# of the numbers is consistent, where as in a geometric sequence,
# each term after the first is multiplied by some constant or common ratio.
#
# Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54].
#
# Negative numbers may be entered as parameters, 0 will not be entered,
# and no array will contain all the same elements.

def ArithGeo(arr)

  arith = true
  geo = true

  i = 0
  while i < arr.count - 1
    if arith == false and geo == false
      return "-1"
    end

    if (arr[i + 1] - arr[i]) != (arr[1] - arr[0])
      arith = false
    end

    if (arr[i + 1] / arr[i] != arr[1] / arr[0])
      geo = false
    end

    i += 1
  end

  return "Arithmetic" if arith
  return "Geometric" if geo
end


