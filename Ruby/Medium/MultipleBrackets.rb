# Have the function MultipleBrackets(str) take the str parameter being passed and
# return 1 #ofBrackets if the brackets are correctly matched and each one is accounted for.
# Otherwise return 0.

# For example: if str is "(hello [world])(!)", then the output should be 1 3
# because all the brackets are matched and there are 3 pairs of brackets,
# but if str is "((hello [world])" the the output should be 0 because the brackets do not correctly match up.

# Only "(", ")", "[", and "]" will be used as brackets. If str contains no brackets return 1.

def MultipleBrackets(str)

  lone_paren = 0
  lone_brack = 0
  pair_count = 0
  
  str.each_char do |char|
    # Identify and count parentheses.
    if char == "("
      lone_paren += 1
    elsif char == ")"
      return 0 if lone_paren == 0
      lone_paren -= 1
      pair_count += 1
    end
    
    # Identify and count brackets.
    if char == "["
      lone_brack += 1
    elsif char == "]"
      return 0 if lone_brack == 0
      lone_brack -= 1
      pair_count += 1
    end
  end
  
  lone_paren == 0 && lone_brack == 0 ? "1 #{pair_count}" : "0"    
end
