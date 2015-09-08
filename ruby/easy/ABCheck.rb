# Have the function ABCheck(str) take the str parameter being passed
# and return the string true if the characters a and b are separated
# by exactly 3 places anywhere in the string at least once
#
# (ie. "lane borrowed" would result in true
# because there is exactly three characters between a and b).
#
# Otherwise return the string false.

def ABCheck(str)

  if str =~ (/[a]...[b]/) || str =~ (/[b]...[a]/)
    return true
  else
    return false
  end
end


def ABCheck_2(str)

  arr = str.split('')
  arr.each_with_index do |char, i|
    if char == "a"
      return true if arr[i + 4] == "b"
    elsif char == "b"
      return true if arr[i + 4] == "a"
    end
  end

  return false
end


# Test cases:
puts ABCheck("lane borrowed")
puts ABCheck("abc abc aaab")
puts ABCheck("lamb goes baaa")

puts ABCheck_2("lane borrowed")
puts ABCheck_2("abc abc aaab")
puts ABCheck_2("lamb goes baaa")
