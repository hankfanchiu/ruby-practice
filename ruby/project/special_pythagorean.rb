# A Pythagorean triplet is a set of three natural numbers, a < b < c,
# for which, a^2 + b^2 = c^2.
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def special_pythagorean(num)

  # For every Pythagorean triplet a >= 3
  for a in 3..(num / 2)
    # b > a
    for b in (a + 1)..(num / 2)
      c = num - (a + b)
      if (c ** 2) == (a ** 2) + (b ** 2)
        return a * b * c
      end
    end
  end
end

puts special_pythagorean(1000)
