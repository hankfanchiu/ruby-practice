# Given an array of words, determine the count of the longest shared starting
# substring ("prefix").
#
# Example:
# ['prefix', 'postfix', 'premonition', 'premark', 'preist', 'floor', 'flood']
#
# Output = 4

def longest_prefix(arr)
  longest_shared = 0

  arr.sort.each_cons(2) do |pair|
    shared = 0

    while shared < [pair[0].length, pair[1].length].min
      break unless pair[0][shared] == pair[1][shared]

      shared += 1
    end

    longest_shared = shared if shared > longest_shared
  end

  longest_shared
end


a1 = ['prefix', 'postfix', 'premonition', 'premark', 'preist', 'floor', 'flood']
puts longest_prefix(a1)

a2 = ['food', 'foo']
puts longest_prefix(a2)
