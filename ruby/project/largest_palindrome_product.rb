# A palindromic number reads the same both ways.
#
# The largest palindrome made from the product of two 2-digit numbers is
# 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product(num)

  min = ('9' * (num - 1)).to_i + 1
  max = ('9' * num).to_i

  largest = 0
  (min..max).each do |number1|
    (min..max).each do |number2|
      product = number1 * number2

      if palindrome?(product) and product > largest
        largest = product
      end
    end
  end

  largest
end

def palindrome?(num)

  num.to_s == num.to_s.reverse
end


puts largest_palindrome_product(2) == 9009
puts largest_palindrome_product(3)
