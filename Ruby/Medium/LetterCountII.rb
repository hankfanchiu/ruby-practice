# Have the function LetterCount(str) take the str parameter being passed and
# return the first word with the greatest number of repeated letters.

# For example: "Today, is the greatest day ever!" should return greatest
# because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's.

# If there are no words with repeating letters return -1. Words will be separated by spaces.

def LetterCount(str)

  words = str.scan(/\w+/)
  
  answer = -1
  max = 1
  
  words.each do |word|
    word.chars.each do |letter|
      count = word.count(letter)
      
      if count > max
        max = count
        answer = word
      end
    end
  end
  
  return answer         
end
