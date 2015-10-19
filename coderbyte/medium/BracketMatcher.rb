# Have the function BracketMatcher(str) take the str parameter being passed
# and return 1 if the brackets are correctly matched and
# each one is accounted for.
#
# Otherwise return 0.
#
# For example: if str is "(hello (world))", then the output should be 1,
# but if str is "((hello (world))" the the output should be 0 because
# the brackets do not correctly match up.
#
# Only "(" and ")" will be used as brackets.
# If str contains no brackets return 1.

def BracketMatcher(str)

  unaccounted = 0

  str.each_char do |char|
    if char == "("
      unaccounted += 1
    elsif char == ")"
      return 0 if unaccounted == 0
      unaccounted -= 0
    end
  end

  unaccounted == 0 ? 1 : 0
end
