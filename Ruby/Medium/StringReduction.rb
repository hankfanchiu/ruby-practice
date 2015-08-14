# Have the function StringReduction(str) take the str parameter being passed
# and return the smallest number you can get through the following reduction method.

# The method is: Only the letters a, b, and c will be given in str and
# you must take two different adjacent characters and replace it with the third.

# For example "ac" can be replaced with "b" but "aa" cannot be replaced with anything.

# This method is done repeatedly until the string cannot be further reduced,
# and the length of the resulting string is to be outputted.

# For example: if str is "cab", "ca" can be reduced to "b" and you get "bb"
# (you can also reduce it to "cc"). The reduction is done so the output should be 2.

# If str is "bcab", "bc" reduces to "a", so you have "aab", then "ab" reduces to "c",
# and the final string "ac" is reduced to "b" so the output should be 1. 

def StringReduction(str)

  hash_f = {"a" => "b", "b" => "c", "c" => "a"}
  hash_r = {"a" => "c", "b" => "a", "c" => "b"}
  
  arr = str.split('')
  reduced = []
  
  i = 0
  while i < arr.count
    if arr[i + 1] == hash_f[arr[i]]
      reduced << hash_f[arr[i + 1]]
      i += 2
    elsif arr[i + 1] == hash_r[arr[i]]
      reduced << hash_r[arr[i + 1]]
      i += 2
    else
      reduced << arr[i]
      i += 1
    end
  end
  
  if reduced.count == arr.count || reduced.count < 2
    return reduced.count
  else
    StringReduction(reduced.join)
  end
end


def StringReduction2(str)
    
  until str.split('').uniq.size == 1
    str.sub!(/ab|ba/, 'c')
    str.sub!(/bc|cb/, 'a')
    str.sub!(/ac|ca/, 'b')
  end
  
  return str.size
end


def StringReduction3(str)

  arr = str.split('')
  
  until arr.uniq.length == 1
    arr.each_with_index do |char, i|
      if arr[i] == arr[i + 1]
        next
      elsif arr[i] =~ /[ac]/ && arr[i + 1] =~ /[ac]/
        arr[i] = "b"
        arr.delete_at(i + 1)
      elsif arr[i] =~ /[cb]/ && arr[i + 1] =~ /[cb]/
        arr[i] = "a"
        arr.delete_at(i + 1)
      elsif arr[i] =~ /[ab]/ && arr[i + 1] =~ /[ab]/
        arr[i] = "c"
        arr.delete_at(i + 1)
      end
    end
  end
  
  return arr.length    
end
