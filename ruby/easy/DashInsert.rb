# Have the function DashInsert(str) insert dashes ('-')
# between each two odd numbers in str.
#
# For example: if str is 454793 the output should be 4547-9-3.
# Don't count zero as an odd number.

def DashInsert(str)

  # Create array of each digit
  arr = str.to_s.chars.map(&:to_i)

  i = 0
  while i < arr.length - 1
    # Insert dash between two odd numbers
    if arr[i].odd? && arr[i + 1].odd?
      arr.insert(i + 1, '-')
      i += 2
    else
      i += 1
    end
  end

  return arr.join
end


def DashInsert_2(str)

  answer = []

  arr = str.to_s.split('').map(&:to_i)
  arr.each_with_index do |num, i|
    answer << num

    if num.odd?
      if arr[i + 1] != nil && arr[i + 1].odd?
        answer << "-"
      end
    end
  end

  return answer.join
end


# Test cases:
puts DashInsert(454793)

puts DashInsert_2(454793)
