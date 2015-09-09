# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

# App Academy prep-work:
def dasherize_number(num)

  num = num.to_s
  answer = []

  i = 0
  while i < num.length
    current = num[i].to_i
    previous = num[i - 1].to_i

    if i > 0
      answer << "-" if previous.odd? || current.odd?
    end

    answer << current
    i += 1
  end

  return answer.join
end


# Test cases:
puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
