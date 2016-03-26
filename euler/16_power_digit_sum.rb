# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

def power_digit_sum(power)
  number = 2 ** power
  power_digit_sum = 0

  until number.zero?
    digit = number % 10

    power_digit_sum += digit
    number /= 10
  end

  power_digit_sum
end

puts power_digit_sum(1000)
