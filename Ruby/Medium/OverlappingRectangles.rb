# Using the Ruby language, have the function OverlappingRectangles(strArr)
# read the strArr parameter being passed which will represent two rectangles
# on a Cartesian coordinate plane and will contain 8 coordinates
# with the first 4 making up rectangle 1 and the last 4 making up rectange 2.
#
# It will be in the following format:
# ["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"]
#
# Your program should determine the area of the space where the
# two rectangles overlap, and then output the number of times
# this overlapping region can fit into the first rectangle.
#
# For the above example, the overlapping region makes up a rectangle of area 2,
# and the first rectangle (the first 4 coordinates)
# makes up a rectangle of area 4, so your program should output 2.
#
# The coordinates will all be integers.
# If there's no overlap between the two rectangles return 0.

def OverlappingRectangles(strArr)

  # Parse the input string into arrays of coordinates for two rectangles:
  n = strArr.scan(/-?\d+/).map(&:to_i)
  r1 = [[n[0], n[1]], [n[2], n[3]], [n[4], n[5]], [n[6], n[7]]]
  r2 = [[n[8], n[9]], [n[10], n[11]], [n[12], n[13]], [n[14], n[15]]]

  # Area of overlap:
  x_range = overlap(r1, r2, 0)
  y_range = overlap(r1, r2, 1)
  area = (x_range * y_range).abs

  # Area of rectangle 1:
  r1_x_range = r1.max[0] - r1.min[0]
  r1_y_range = r1.max[1] - r1.min[1]
  r1_area = (r1_x_range * r1_y_range).abs

  area == 0? 0 : r1_area / area
end


# Separate method to determine the overlapping ranges between two rectangles
def overlap(r1, r2, i)

  # Determine the rectangles' relative x- or y-positions.
  left_or_bot = r1
  right_or_top = r2

  if r2.min[i] < r1.min[i]
    left_or_bot = r2
    right_or_top = r1
  end

  # Return 0 if there is no overlap, or else return the overlapping range.
  return 0 if left_or_bot.max[i] < right_or_top.min[i]
  return [left_or_bot.max[i], right_or_top.max[i]].min - right_or_top.min[i]
end

puts OverlappingRectangles("(0,0),(0,-2),(3,0),(3,-2),(2,-1),(3,-1),(2,3),(3,3)")
