# Given an array of words, determine the count of the longest shared starting
# substring ("prefix").
#
# Example:
# ['prefix', 'postfix', 'premonition', 'premark', 'preist', 'floor', 'flood']
#
# Output = 4

def longest_prefix(words)
  sorted_words = words.sort
  longest_shared = 0

  sorted_words.each_cons(2) do |pair|
    shared = 0
    first_word = pair.first
    second_word = pair.last
    shorter_length = [first_word.length, second_word.length].min

    while shared < shorter_length
      break unless first_word[shared] == second_word[shared]

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
