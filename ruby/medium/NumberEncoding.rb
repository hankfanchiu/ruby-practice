# Using the Ruby language, have the function NumberEncoding(str) take
# the str parameter and encode the message according to the following rule:
# encode every letter into its corresponding numbered position in the alphabet.
#
# Symbols and spaces will also be used in the input.
#
# For example: if str is "af5c a#!" then your program should return 1653 1#!.


def NumberEncoding(str)

  arr = Array.new

  str.split("").each do |char|
    if char =~ /[[:alpha:]]/
      arr << (char.downcase.ord - 96).to_s
    else
      arr << char
    end
  end

  return arr.join
end


# Test cases:
puts NumberEncoding("jaj-a") #=> 10110-1
puts NumberEncoding("hello 45") #=> 85121215 45
