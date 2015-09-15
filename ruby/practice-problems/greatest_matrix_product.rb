# Given a matrix of integers
# (e.g. input: [[1, 2, 3, 5], [2, 5, 7, 8], [1, 2, 5, 3], [9, 3, 1, 1]]),
# find the greatest product of two adjacent integers
# (vertically and horizontally).

def greatest_product(arr)

  greatest = 0

  # products within subarrays
  arr.each do |subarray|
    subarray.each_cons(2) do |consecutives|
      product = consecutives.inject(:*)

      greatest = product if product > greatest
    end
  end

  # products across subarrays
  arr.each_cons(2) do |subarrays|
    subarrays[0].each_with_index do |integer, idx|
      product = integer * subarrays[1][idx]

      greatest = product if product > greatest
    end
  end

  greatest
end

puts greatest_product([[1,1,1], [1,1,1], [1,1,0], [0,0,2]]) == 1


# Modify the above method to also calculate the products of diagonally
# adjacent integers

def greatest_product_2(arr)

  greatest = 0

  # products within subarrays
  arr.each do |subarray|
    subarray.each_cons(2) do |consecutives|
      product = consecutives.inject(:*)

      greatest = product if product > greatest
    end
  end

  # products across subarrays
  arr.each_cons(2) do |subarrays|
    subarrays[0].each_with_index do |integer, idx|
      # vertical:
      product = integer * subarrays[1][idx]
      greatest = product if product > greatest

      # diagonals:
      if idx + 1 < subarrays.count
        product = integer * subarrays[1][idx + 1]
        greatest = product if product > greatest
      end

      if idx > 0
        product = integer * subarrays[1][idx - 1]
        greatest = product if product > greatest
      end
    end
  end

  greatest
end

puts greatest_product_2([[1,3,1], [5,1,1], [1,1,0], [0,0,2]])
