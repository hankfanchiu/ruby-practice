# Have the function SwapII(str) take the str parameter
# and swap the case of each character.
#
# Then, if a letter is between two numbers (without separation),
# switch the places of the two numbers.
#
# For example: if str is "6Hello4 -8World, 7 yes3"
# the output should be 4hELLO6 -8wORLD, 7 YES3.

def SwapII(str)

  answer = str.swapcase

  # Scan for all substrings in which letter(s) are between two numbers
  # (without separation).
  answer.scan(/\d+[[:alpha:]]+\d+/).each do |matched|

    # Switch the places of the two numbers, and store this substitute.
    replace = matched.gsub(/(\d+)([[:alpha:]]+)(\d+)/, '\3\2\1')

    # Replace each matched substring with the substitute.
    answer.sub!(matched, replace)
  end

  return answer
end
