# Given a sentence string and an array of banned words,
# write a function to check if any banned words are in the sentence.
#
# Replace the banned word with asterisks equal to the number of characters
# in the banned word. Return the cleaned sentence.

def sentence_cleaner(sentence, banned_words)
  banned_words_map = words_to_asterisks(banned_words)
  words = sentence.split

  cleaned_sentence = words.map do |word|
    banned[word.downcase] ? banned[word.downcase] : word
  end

  cleaned_sentence.join(' ')
end

def words_to_asterisks(words)
  asterisk_map = {}

  words.each do |word|
    asterisks = '*' * word.length
    asterisk_map[word.downcase] = asterisks
  end

  asterisk_map
end
