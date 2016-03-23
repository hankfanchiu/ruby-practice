# Below are two methods for searching an element "t" in an array "arr"
# via binary search (O(logn)).

# Recursive binary search method:
def binary_search1(arr, target, start_index = 0, end_index = arr.count - 1)
  middle = (start_index + end_index) / 2

  return true if target == arr[middle]
  return false if start_index == end_index

  if target < arr[middle]
    binary_search1(arr, target, start_index, middle)
  elsif target > arr[middle]
    binary_search1(arr, target, middle + 1, end_index)
  end
end


# Iterative binary search method:
def binary_search2(arr, target)
  start_index = 0
  end_index = arr.count

  while start_index < end_index
    middle = (start_index + end_index) / 2

    return true if target == arr[middle]

    if target < arr[middle]
      end_index = middle
    elsif target > arr[middle]
      start_index = middle + 1
    end
  end

  false
end


# Testing:
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8]

puts "Recurive binary search:"
puts "-5 in #{arr}? #{binary_search1(arr, -5)}"
puts "0 in #{arr}? #{binary_search1(arr, 0)}"
puts "1 in #{arr}? #{binary_search1(arr, 1)}"
puts "99 in #{arr}? #{binary_search1(arr, 99)}"

puts "Iterative binary search:"
puts "-5 in #{arr}? #{binary_search2(arr, -5)}"
puts "0 in #{arr}? #{binary_search2(arr, 0)}"
puts "8 in #{arr}? #{binary_search2(arr, 8)}"
puts "99 in #{arr}? #{binary_search2(arr, 99)}"
