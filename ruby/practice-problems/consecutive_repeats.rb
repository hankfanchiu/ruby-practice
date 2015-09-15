# Given a string str (lowercase, no punctuation, no spaces),
# determine the greatest numer of consecutively repeating letters
#
# Example: str = 'abacdkabdkjdkaaaabbbb'
# Output = 4

def consecutive_repeats(str)

  greatest = 1
  letter_repeat = 1

  arr = str.split('')
  arr.each_with_index do |letter, i|
    if arr[i + 1] == letter
      letter_repeat += 1
    else
      letter_repeat = 1
    end

    greatest = letter_repeat if letter_repeat > greatest
  end

  greatest
end

puts consecutive_repeats('abacdkabdkjdkaaaabbbb') == 4
