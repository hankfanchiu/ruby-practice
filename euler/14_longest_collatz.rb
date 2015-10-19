# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13,
# we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def longest_collatz(limit)

  answer = 0
  longest_chain = 0

  number = 2
  while number < limit
    sequence_length = 1

    sequence_number = number
    while sequence_number > 1
      if sequence_number.even?
        sequence_number = sequence_number / 2
      else
        sequence_number = 3 * sequence_number + 1
      end

      sequence_length += 1
    end

    if sequence_length > longest_chain
      longest_chain = sequence_length
      answer = number
    end

    number += 1
  end

  answer
end

puts longest_collatz(10)
puts longest_collatz(1000000)
