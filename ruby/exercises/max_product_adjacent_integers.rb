# Find the thirteen adjacent digits in a number that have the greatest product.
# What is the value of this product?

def max_product(num)

  integers = num.to_s.split('').map(&:to_i)

  product = integers[0, 13].inject(:*)
  max = product

  i = 1
  while i < integers.count - 13
    product /= integers[i - 1]
    product *= integers[i + 12]

    max = product if product > max

    i += 1
  end

  max
end
