# Write a method that takes two string inputs, and returns a list of all
# characters that are intersected by the two strings (i.e. found in both).
#
# Return each intersecting character with only the minimum number of
# intersecting occurances (e.g. if "a" occurs three times in the first string
# and four times in the second string, return "a" three times in the answer).
#
# The method should be case-insensitive.

def intersection(str1, str2)
  char_frequency = Hash.new(0)
  intersection = []

  str1.each_char { |char1| char_frequency[char1.downcase] += 1 }

  str2.each_char do |char2|
    downcased_char2 = char.downcase

    next unless char_frequency[downcased_char2] > 0

    intersection << downcased_char2
    char_frequency[downcased_char2] -= 1
  end

  intersection
end

puts intersection("Here is a string", "here!") == ["h", "e", "r", "e"]
puts intersection("123450000", "1000") == ["1", "0", "0", "0"]
