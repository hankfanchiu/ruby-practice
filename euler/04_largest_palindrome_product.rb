# A palindromic number reads the same both ways.
#
# The largest palindrome made from the product of two 2-digit numbers is
# 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product(num)
  min = ('9' * (num - 1)).to_i + 1
  max = ('9' * num).to_i
  largest_palindrome_product = 0
  a = max

  while a >= min
    b = max

    while b >= a
      product = a * b

      break if product < largest_palindrome_product

      largest_palindrome_product = product if palindrome?(product)

      b -= 1
    end

    a -= 1
  end

  largest_palindrome_product
end

def palindrome?(num)
  num.to_s == num.to_s.reverse
end

puts largest_palindrome_product(2) == 9009
puts largest_palindrome_product(3)
