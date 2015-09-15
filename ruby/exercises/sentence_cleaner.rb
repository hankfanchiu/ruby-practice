# Given a sentence string and an array of banned words,
# write a function to check if any banned words are in the sentence.
#
# Replace the banned word with asterisks equal to the number of characters
# in the banned word. Return the cleaned sentence.

def sentence_cleaner(str, arr)

  banned = {}
  arr.each do |word|
    asterisks = '*' * word.length
    banned[word.downcase] = asterisks
  end

  answer = str.split.map do |word|
    if banned[word.downcase]
      banned[word.downcase]
    else
      word
    end
  end

  answer.join(' ')
end
