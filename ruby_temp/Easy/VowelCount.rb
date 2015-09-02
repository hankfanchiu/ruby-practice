# Have the function VowelCount(str) take the str string parameter being passed
# and return the number of vowels the string contains
# (ie. "All cows eat grass" would return 5).
#
# Do not count y as a vowel for this challenge.

def VowelCount(str)

  return str.scan(/[aeiou]/).count
end


# App Academy prep-work:
def count_vowels(string)

  count = 0

  i = 0
  while i < string.length
    count += 1 if string[i] =~ /[aeiou]/
    i += 1
  end

  return count
end


# Test cases:
puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
