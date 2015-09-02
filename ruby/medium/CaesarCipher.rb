# Have the function CaesarCipher(str,num) take the str parameter and perform
# a Caesar Cipher shift on it using the num parameter as the shifting number.
#
# A Caesar Cipher works by shifting each letter in the string N places
# down in the alphabet (in this case N will be num).
#
# Punctuation, spaces, and capitalization should remain intact.
#
# For example if the string is "Caesar Cipher" and num is 2 the output
# should be "Ecguct Ekrjgt".

# Solution accepted by up-to-date Ruby interpreters:
def CaesarCipher(str,num)

  alpha_down = Array('a'..'z')
  alpha_up = Array('A'..'Z')

  downcase = Hash[alpha_down.zip(alpha_down.rotate(num))]
  upcase = Hash[alpha_up.zip(alpha_up.rotate(num))]

  cipher = downcase.merge(upcase)

  answer = str.chars.map do |char|
    if cipher.include?(char)
      cipher[char]
    else
      char
    end
  end

  return answer.join
end


# Solution accepted by Coderbyte's Ruby interpreter, because:
# - #rotate returns NoMethodError
# - Multi-line block for #map is not recognized
def CaesarCipher(str,num)

  alpha_downcase = Array('a'..'z')
  alpha_upcase = Array('A'..'Z')

  down_rotate = alpha_downcase.dup
  num.times {down_rotate.push(down_rotate.shift)}

  up_rotate = alpha_upcase.dup
  num.times {up_rotate.push(up_rotate.shift)}

  downcase = Hash[alpha_downcase.zip(down_rotate)]
  upcase = Hash[alpha_upcase.zip(up_rotate)]

  cipher = downcase.merge(upcase)

  answer = []
  str.chars.each do |char|
    if cipher.include?(char)
      answer << cipher[char]
    else
      answer << char
    end
  end

  return answer.join
end
