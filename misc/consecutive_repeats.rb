# Given a string str (lowercase, no punctuation, no spaces),
# determine the greatest numer of consecutively repeating letters
#
# Example: str = 'abacdkabdkjdkaaaabbbb'
# Output = 4

def consecutive_repeats(string)
  greatest = 1
  letter_repeat = 1

  string.each_with_index do |letter, index|
    if string[index + 1] == letter
      letter_repeat += 1
    else
      letter_repeat = 1
    end

    greatest = letter_repeat if letter_repeat > greatest
  end

  greatest
end

puts consecutive_repeats('abacdkabdkjdkaaaabbbb') == 4
