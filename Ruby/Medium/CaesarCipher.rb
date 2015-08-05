# Have the function CaesarCipher(str,num) take the str parameter and
# perform a Caesar Cipher shift on it using the num parameter as the shifting number.

# A Caesar Cipher works by shifting each letter in the string N places down in the alphabet
# (in this case N will be num). Punctuation, spaces, and capitalization should remain intact.

# For example if the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt". 

def CaesarCipher(str,num)
  
  alpha_down = Array('a'..'z')
  alpha_up = Array('A'..'Z')
  
  downcase = Hash[alpha_down.zip(alpha_down.rotate(num))]
  upcase = Hash[alpha_up.zip(alpha_up.rotate(num))]
  
  cipher = downcase.merge(upcase)

  answer = str.chars
  answer.map! do |char|
    if char =~ /[[:alpha:]]/
      cipher.fetch(char)
    else
      char
    end
  end

  return answer.join
end
