# Have the function SwapCase(str) take the str parameter
# and swap the case of each character.
#
# For example: if str is "Hello World" the output should be hELLO wORLD.
#
# Let numbers and symbols stay the way they are.

# Brute-force method:
def SwapCase(str)

  arr = str.chars.map do |letter|
    if letter == letter.downcase
      letter.upcase
    else
      letter.downcase
    end
  end

  return arr.join
end

# Rubyist method:
def SwapCaseII(str)

  str.swapcase
end
