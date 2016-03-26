# A Pythagorean triplet is a set of three natural numbers, a < b < c,
# for which, a^2 + b^2 = c^2.
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def special_pythagorean(num)
  half = num / 2

  # For every Pythagorean triplet a >= 3
  3.upto(half) do |a|
    (a + 1).upto(half) do |b|
      c = num - a - b

      return (a * b * c) if pythagorean?(a, b, c)
    end
  end
end

def pythagorean?(a, b, c)
  (c ** 2) == (a ** 2) + (b ** 2)
end

puts special_pythagorean(1000)
