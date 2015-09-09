# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)

  answer = []

  (year_start..year_end).to_a.each do |year|
    if no_repeat?(year)
      answer << year
    end
  end

  return answer
end

# Helper function:
def no_repeat?(year)

  arr = year.to_s.split("")

  if arr.count - arr.uniq.count == 0
    return true
  else
    return false
  end
end


# Test cases:
# should return a no repeat year:
p no_repeats(1234, 1234) #=> [1234]

# should not return a repeat year:
p no_repeats(1123, 1123) #=> []

# should return only those years that have no repeated digits:
p no_repeats(1980, 1987) #=> [1980, 1982, 1983, 1984, 1985, 1986, 1987]
