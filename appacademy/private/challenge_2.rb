# Instructions:

# * The time limit is 15 minutes
# * We don't care about the efficiency of your solution
# * Please ask me questions instead of looking it up or running code on
# your machine
# * Please tell me your plan of attack after you've had a chance to read
# the question and think about it for a while

# Problem:

# Write a method that takes an array of stock prices (prices on days
# 0, 1, ...), and outputs the most profitable pair of days on which to
# first buy the stock and then sell the stock, e.g.: stock_picker( [ 44,
# 30, 24, 32, 35, 30, 40, 38 ] ) == [ 2, 6 ]


def stock_picker(arr)

  profitable = {}

  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      if arr[j] > arr[i]
        profit = arr[j] - arr[i]
        profitable[i.to_s + ' ' + j.to_s] = profit
      end
      j += 1
    end
    i += 1
  end

  best = profitable.key(profitable.values.max)
  best.split(' ').map(&:to_i)
end

puts stock_picker([ 44, 30, 24, 32, 35, 30, 40, 38 ]) == [2, 6]
