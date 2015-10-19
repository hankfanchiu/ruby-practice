### INSTRUCTIONS

# Welcome to the coding exercise. Over the next 45 minutes, please read
# the following and implement your solution to the question below. You have 15
# minutes for each problem. You can use any programming language you like;
# it doesn't have to be Ruby.

# Please don't consult with any outside sources, including
# asking others for help, stack overflow, google, etc.

# Also, please do not attempt to run your code to see how it will work. This
# includes REPLs like irb and pry. If there is anything you are not sure about,
# just go ahead and ask me. You won't be penalized for that!

# I am mainly concerned with your approach to solving the problem; I am less
# concerned about the syntax being absolutely perfect.

# To minimize cheating, please do not share these questions with anyone;
# that includes on the Internet or just to your friends.

# If you have any questions about anything, ask me for help; that's why I am
# here.

# ----------

#### Decode ####
# You are given an encoded string. Your job is to find the original
# string  from the encoded one. Write a function that takes in an
# encoded string and returns the original.
#
# The code is defined as follows:
# * Each character in the encoded string is followed by a number
# * That number indicates how many times it appears consecutively
#
# For Example:
# encoded_string = "m1i1s2i1s2i1p2i1"
# decoded_string = decode(encoded_string)
# decoded_string #=> "mississippi"

# Submitted answer:
def decode(str)

  arr = str.split('')
  result = []

  i = 0
  while i < arr.length
    letter = arr[i]
    n = arr[i + 1].to_i

    result << (letter * n)

    i += 2
  end

  result.join('')
end

puts decode("m1i1s2i1s2i1p2i1") == "mississippi"
# TA example: decode("h1i1s13") == "hisssssssssssss"

# Revised answer:
def decode_2(str)

  arr = str.scan(/\w|\d+/)

  result = arr.each_with_index.map do |char, i|
    if char =~ /[[:alpha:]]/
      char * arr[i + 1].to_i
    end
  end

  result.join
end

puts decode_2("m1i1s2i1s2i1p2i1") == "mississippi"

# ---------

#### Five Sort ####
# Write a function that recieves an array of numbers as an argument.
# It should return the same array with the fives moved to the end.
# The ordering of the other elements should remain unchanged.
#
# For example:
# nums = [1, 5, 3, 5, 5, 2, 3]
# sorted = five_sort(nums)
# sorted #=> [1, 3, 2, 3, 5, 5, 5]
#
# Rules
# * You may not, at any time, create a new array.
# * You are only permitted to use a 'while' loop
# * You are not permitted to call any methods on the array. Only the
# use of [], []=, and length are permitted.

# Submitted answer:
def five_sort(arr)

  j = arr.length - 1
  while j > 0

    i = 0
    while i < j
      if arr[i] == 5
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end

      i += 1
    end

  j -= 1
  end

  arr
end

puts five_sort([1, 5, 3, 5, 5, 2, 3]) == [1, 3, 2, 3, 5, 5, 5]

# TA example: five_sort([5, 1, 2])

# Revised answer:
def five_sort_2(arr)

 i = 0
 swap = 1
 while i < arr.length
   if arr[i] == 5
     while swap < arr.length
       if arr[swap] != 5
         arr[i], arr[swap] = arr[swap], arr[i]
         swap += 1
         break
       else
         swap += 1
       end
     end
   end

   i += 1
 end

 arr
end

puts five_sort_2([1, 5, 3, 5, 5, 2, 3]) == [1, 3, 2, 3, 5, 5, 5]
p five_sort_2([5, 5, 1, 2])

# Even more efficient solution:
def five_sort_3(arr)

  # Find index of first 5:
  five = 0
  while (five < arr.length) and (arr[five] != 5)
    five += 1
  end

  # Loop and swap each 5 with the immediate non-5:
  swap = five + 1
  while swap < arr.length
    if arr[swap] != 5
      arr[five], arr[swap] = arr[swap], arr[five]
      five += 1
    end
    swap += 1
  end

  arr
end

p five_sort_3([5, 5, 5, 1, 2, 3])


# -----------

#### Aliquot Sequence ####
# A number's aliquot sum is the sum of all of its factors excluding itself.
#
# For example, the aliquot sum of 10: 1 + 2 + 5 = 8
#
# An aliquot sequence is defined as follows:
# Take a number N. Find N's aliquot sum. The resulting number becomes the next
# number in the sequence. Then find the aliquot sum of this number.  Repeat this
# process indefinitely.
#
# The first 4 numbers for the aliquot sequence of 10 are: 10, 8, 7, 1
#
# Write a function that takes in two numbers, base and n, and returns the aliquot
# sequence of length n starting at base.

# base = 10
# n = 5
# [10, 8, 7, 1, 0]

# Submitted answer:
def aliquot_seq(base, n)

  answer = [base]

  while n > 1
    if base > 1
      result = (1..base - 1).select do |number|
        (base / number.to_f).ceil == (base / number)
      end

      base = result.inject(:+)
      answer << base
    else
      answer << 0
    end

    n -= 1
  end

  answer
end

# TA example aliquot_seq(10, 1)
# TA examples 10 % 3 == 1
#             9 % 3 == 0

# n % x == 0

puts aliquot_seq(10, 5) == [10, 8, 7, 1, 0]

# Revised answer:
def aliquot_seq_2(base, n)

  answer = [base]

  until n == 1
    if base > 1
      result = (1..base - 1).select { |number| base % number == 0 }
      base = result.inject(:+)
      answer << base
    else
      answer << 0
    end

    n -= 1
  end

  answer
end

puts aliquot_seq_2(10, 5) == [10, 8, 7, 1, 0]
