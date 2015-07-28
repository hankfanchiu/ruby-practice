# Have the function LetterCountI(str) take the str parameter being passed and return the first word
# with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should
# return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's.
# If there are no words with repeating letters return -1. Words will be separated by spaces. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.

# This first method returns the word with the highest number of instances of repeating letters:
# For example, if "aaa bbcc" was the input, the return would be "bbcc". This is because there are
# four non-unique letters in "bbcc", whereas there are three non-unique letters in "aaa".
def LetterCountI(str)
  greatest = ""
  most_repeats = 0
  
  str.split.each do |word|
    repeats = word.size - word.chars.uniq.size
    if repeats > most_repeats
      most_repeats = repeats
      greatest = word
    end
  end
  
  if most_repeats == 0
    return -1
  else
    return greatest
  end
end

# This second method correctly identifies the word with highest frequency of repeating letters:
# For example, if "aaa bbcc" was the input, the return would be "aaa".
def LetterCountII(str) 
  words = str.scan(/\w+/)
    
  arr = words.map do |word|
      word.count (
          word.split(//).max_by { |letter| word.count(letter) }
      )
  end
    
  return -1 if arr.max == 1
  return words[arr.index(arr.max)]
end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
LetterCountI(STDIN.gets)   
