# Have the function ArithGeoII(arr) take the array of numbers stored in arr and
# return the string "Arithmetic" if the sequence follows an arithmetic pattern
# or return "Geometric" if it follows a geometric pattern.
#
# If the sequence doesn't follow either pattern return -1.
#
# An arithmetic sequence is one where the difference between each of the
# numbers is consistent, where as in a geometric sequence,
# each term after the first is multiplied by some constant or common ratio.
#
# Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54].
#
# Negative numbers may be entered as parameters, 0 will not be entered,
# and no array will contain all the same elements.

def ArithGeoII(arr)

  arith = true
  geo = true

  i = 1
  while i < arr.length
    if (arr[i] - arr[i - 1]) != (arr[1] - arr[0])
      arith = false
    end

    if (arr[i] / arr[i - 1]) != (arr[1] / arr[0])
      geo = false
    end

    i += 1
  end

  if arith
    return 'Arithmetic'
  elsif geo
    return 'Geometric'
  else
    return -1
  end
end
