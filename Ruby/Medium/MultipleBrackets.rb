# Have the function MultipleBrackets(str) take the str parameter being passed and
# return 1 #ofBrackets if the brackets are correctly matched and each one is accounted for.
# Otherwise return 0.

# For example: if str is "(hello [world])(!)", then the output should be 1 3
# because all the brackets are matched and there are 3 pairs of brackets,
# but if str is "((hello [world])" the the output should be 0 because the brackets do not correctly match up.

# Only "(", ")", "[", and "]" will be used as brackets. If str contains no brackets return 1.

def MultipleBrackets(str)

  unaccounted_p = 0
  unaccounted_b = 0
  pair = 0
  
  str.each_char do |char|
    if char == "("
      unaccounted_p += 1
    elsif char == ")"
      return 0 if unaccounted_p == 0
      unaccounted_p -= 1
      pair += 1
    end
    
    if char == "["
      unaccounted_b += 1
    elsif char == "]"
      return 0 if unaccounted_b == 0
      unaccounted_b -= 1
      pair += 1
    end
  end
  
  if unaccounted_p == 0 && unaccounted_b == 0
    return "1 #{pair}"
  else
    return 0
  end    
end
