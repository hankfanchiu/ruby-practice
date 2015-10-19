# Write a method that takes two string inputs, and returns a list of all
# characters that are intersected by the two strings (i.e. found in both).
#
# Return each intersecting character with only the minimum number of
# intersecting occurances (e.g. if "a" occurs three times in the first string
# and four times in the second string, return "a" three times in the answer).
#
# The method should be case-insensitive.

def intersection(str1, str2)

  hsh = {}
  str1.downcase.each_char do |char1|
    if hsh[char1]
      hsh[char1] += 1
    else
      hsh[char1] = 1
    end
  end

  answer = []
  str2.downcase.each_char do |char2|
    if hsh[char2] && hsh[char2] > 0
      answer << char2
      hsh[char2] -= 1
    end
  end

  return answer
end

puts intersection("Here is a string", "here!") == ["h", "e", "r", "e"]
puts intersection("123450000", "1000") == ["1", "0", "0", "0"]
