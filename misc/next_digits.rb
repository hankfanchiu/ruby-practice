# Given two integers x and y, take each integer between the range
# (including x and y) and return an integer in which every digit is one-plus
# the original digit.
#
# In the case of a 9 as the original digit, replace it with 0.
#
# Example: x = 7, y = 11
# Output = [8, 9, 0, 21, 22]

def next_digits(x, y)
  next_digits = (x..y).map do |integer|
    digits = integer.to_s.split

    one_plus_digits = digits.map do |digit|
      if digit.to_i < 9
        (digit.to_i + 1).to_s
      elsif digit.to_i == 9
        "0"
      end
    end

    one_plus_digits.join.to_i
  end

  next_digits
end


puts next_digits(7, 11) == [8, 9, 0, 21, 22]
