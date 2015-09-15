# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

# App Academy prep-work:
def most_common_letter(string)

  counts = {}
  string.split("").each do |char|
    if counts[char]
      counts[char] += 1
    else
      counts[char] = 1
    end
  end

  return counts.max_by { |k, v| v }
end

# Runtime: O(n)


# Test cases:
puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
