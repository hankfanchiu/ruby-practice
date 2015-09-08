# Have the function ExOh(str) take the str parameter being passed
# and return the string true if there is an equal number of x's and o's,
# otherwise return the string false.
#
# Only these two letters will be entered in the string,
# no punctuation or numbers.
#
# For example: if str is "xooxxxxooxo"
# then the output should return false because there are 6 x's and 5 o's.

def ExOh(str)

  if str.scan(/x/).count == str.scan(/o/).count
    return true
  else
    return false
  end

end


def ExOh_2(str)

  x_count = 0
  o_count = 0

  i = 0
  while i < str.length
    if str[i] == "x"
      x_count += 1
    elsif str[i] == "o"
      o_count += 1
    end

    i += 1
  end

  if x_count == o_count
    return true
  else
    return false
  end
end


# Test cases:
puts ExOh("xooxxxxooxo") #=> false
puts ExOh("xooxxxxooo") #=> true

puts ExOh_2("xooxxxxooxo") #=> false
puts ExOh_2("xooxxxxooo") #=> true
