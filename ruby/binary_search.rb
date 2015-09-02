# Below are two methods for searching an element "t" in an array "arr"
# via binary search (O(logn)).


# Recursive binary search method:
def binary_search1(arr, t, i_start = 0, i_end = arr.count - 1)

  m = (i_start + i_end) / 2

  return true if t == arr[m]
  return false if i_start == i_end

  if t < arr[m]
    binary_search1(arr, t, i_start, m)
  elsif t > arr[m]
    binary_search1(arr, t, m + 1, i_end)
  end
end


# Iterative binary search method:
def binary_search2(arr, t)

  i_start = 0
  i_end = arr.count

  while i_start < i_end
    m = (i_start + i_end) / 2
    return true if t == arr[m]

    if t < arr[m]
      i_end = m
    elsif t > arr[m]
      i_start = m + 1
    end
  end

  return false
end


# Testing:
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8]

puts "Recurive binary search:"
puts "-5 in #{arr}? #{binary_search1(arr, -5)}"
puts "0 in #{arr}? #{binary_search1(arr, 0)}"
puts "1 in #{arr}? #{binary_search1(arr, 1)}"
puts "99 in #{arr}? #{binary_search1(arr, 99)}"
puts

puts "Iterative binary search:"
puts "-5 in #{arr}? #{binary_search2(arr, -5)}"
puts "0 in #{arr}? #{binary_search2(arr, 0)}"
puts "8 in #{arr}? #{binary_search2(arr, 8)}"
puts "99 in #{arr}? #{binary_search2(arr, 99)}"
