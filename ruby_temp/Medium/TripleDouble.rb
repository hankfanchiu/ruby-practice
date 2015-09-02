# Have the function TripleDouble(num1,num2) take both parameters being passed,
# and return 1 if there is a straight triple of a number at any place in num1
# and also a straight double of the same number in num2.
#
# For example: if num1 equals 451999277 and num2 equals 41177722899,
# then return 1 because in the first parameter
# you have the straight triple 99# and you have a straight double, 99,
# of the same number in the second parameter.
#
# If this isn't the case, return 0.

# First solution that is inefficient:
def TripleDouble(num1,num2)

  triple = []
  double = []

  # Isolate any number in a straight triple in num1.
  arr1 = num1.to_s.split('')
  arr1.each_with_index do |number, i|
    if number == arr1[i + 1]
      if arr1[i + 1] == arr1[i + 2]
        triple << number
      end
    end
  end

  # Isolate any number in a straight double in num2.
  arr2 = num2.to_s.split('')
  arr2.each_with_index do |number, i|
    if number == arr2[i + 1]
      double << number
    end
  end

  # Check if each number in a straight triple is also in a straight double.
  triple.each do |n|
    if double.include?(n)
      return 1
    end
  end

  return 0
end

# Revised solution that is more than double the efficiency:
def TripleDouble(num1, num2)

  str1 = num1.to_s
  str2 = num2.to_s

  str1.each_char do |n|
    if str1.include?("#{n}#{n}#{n}")
      if str2.include?("#{n}#{n}")
        return 1
      end
    end
  end

  return 0
end
