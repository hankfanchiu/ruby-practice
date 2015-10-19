lines = File.readlines(ARGV.first)
text = lines.join

line_count = lines.size

# Count characters
character_count = text.length
character_count_nospaces = text.gsub(/\s+/, '').length

# Count words
words = text.split
word_count = words.count

# Count sentences
sentences = text.split(/\.|\?|!/)
sentence_count = sentences.count

# Count paragraphs
paragraphs = text.split(/\n\n/)
paragraph_count = paragraphs.count

# Count key words
stop_words = %w{the a by on for of are with just but and to the my I has some in}
key_words = words.select { |word| !stop_words.include?(word) }
key_words_percentage = (key_words.count.to_f / words.length.to_f) * 100

# Return analysis to user
puts "#{ARGV.first} analyzed:"
puts "\n"
puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "\n"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "\n"
puts "#{key_words.count} key words (#{key_words_percentage.to_i}%)"
puts "\n"
puts "Analsis finished."
