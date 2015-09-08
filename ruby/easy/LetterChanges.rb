# Have the function LetterChanges(str) take the str parameter being passed
# and modify it using the following algorithm.
#
# Replace every letter in the string with the letter following it
# in the alphabet (ie. c becomes d, z becomes a).
#
# Then capitalize every vowel in this new string (a, e, i, o, u)
# and finally return this modified string.

def LetterChanges(str)

  str.gsub!(/[a-zA-Z]/) { |letter| letter.next }
  str.gsub!(/[aeiou]/) { |vowel| vowel.upcase }

  return str
end


def LetterChanges_2(str)

  answer = []

  str.each_char do |character|
    ascii = character.downcase.ord

    if ascii >= "a".ord && ascii <= "z".ord
      ascii += 1
      ascii = "a".ord if ascii > "z".ord

      if ascii.chr =~ /[aeiou]/
        answer << ascii.chr.upcase
      else
        answer << ascii.chr
      end
    else
      answer << character
    end
  end

  return answer.join
end


# Test cases:
puts LetterChanges("zz")
puts LetterChanges("my name is hank")

puts LetterChanges_2("zz")
puts LetterChanges_2("my name is hank")
