# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr)

  j = arr.count - 1
  while j > 0
    i = 0
    while i < j
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end

      i += 1
    end
    j -= 1
  end

  return arr
end


# Test cases:
# it works with an empty array
p bubble_sort([])
#=> []

# it works with an array of one item
p bubble_sort([1])
#=> [1]

# it sorts numbers
p bubble_sort([5, 4, 3, 2, 1])
#=> [1, 2, 3, 4, 5]