# Have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string.
# If there are two or more words that are the same length, return the first word from the string with that length.

# Ignore punctuation and assume sen will not be empty. 

def LongestWord(sen)

  longest = ""
  
  sen.scan (/\w+/) do |word|
    if word.length > longest.length
      longest = word
    end
  end
  
  return longest
end
