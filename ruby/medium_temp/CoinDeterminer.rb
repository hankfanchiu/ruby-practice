# Have the function CoinDeterminer(num) take the input,
# which will be an integer ranging from 1 to 250, and return an integer output
# that will specify the least number of coins, that when added,
# equal the input integer.
#
# Coins are based on a system as follows:
# there are coins representing the integers 1, 5, 7, 9, and 11.
#
# So for example: if num is 16, then the output should be 2
# because you can achieve the number 16 with the coins 9 and 7.
# If num is 25, then the output should be 3 because you can achieve 25
# with either 11, 9, and 5 coins or with 9, 9, and 7 coins.

# An initial solution that does not return the _least_ number of coins:
def CoinDeterminer(num)

  coins = [1, 5, 7, 9, 11]
  count = 0
  amount = num

  coins.reverse.each do |coin|
    if amount >= coin
      count += amount / coin
      amount %= coin
    end
  end

  return count
end

# Adapted from others' solution that involves #divmod:
def CoinDeterminer(num)

  return num if num < 5

  count, modulo = num.divmod(11)

  return count if modulo == 0
  return count + 1 if modulo.odd?
  return count + 2 if modulo.even?
end
