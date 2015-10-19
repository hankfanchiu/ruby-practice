# Have the function FirstReverse(str) take the str parameter being passed
# and return the string in reversed order.

def FirstReverse(str)

  answer = []
  i = str.length - 1
  while i >= 0
    answer << str[i]
    i -= 1
  end

  return answer.join
end

puts(
  'FirstReverse("abc") == "cba": ' + (FirstReverse("abc") == "cba").to_s
)
puts(
  'FirstReverse("a") == "a": ' + (FirstReverse("a") == "a").to_s
)
puts(
  'FirstReverse("") == "": ' + (FirstReverse("") == "").to_s
)
