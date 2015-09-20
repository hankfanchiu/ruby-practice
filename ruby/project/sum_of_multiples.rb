# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below a number input.

def sum_of_multiples(num)

  sum = 0
  (1..num - 1).each do |number|
    if (number % 3 == 0) or (number % 5 == 0)
      sum += number
    end
  end

  sum
end

puts sum_of_multiples(1000)
