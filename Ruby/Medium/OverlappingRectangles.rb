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

  n = strArr.scan(/-?\d+/).map(&:to_i)
  r1 = [[n[0], n[1]], [n[2], n[3]], [n[4], n[5]], [n[6], n[7]]]
  r2 = [[n[8], n[9]], [n[10], n[11]], [n[12], n[13]], [n[14], n[15]]]

  # Determine the rectangles' relative x-positions.
  r_left = r1
  r_right = r2

  if r2.min[0] < r1.min[0]
    r_left = r2
    r_right = r1
  end

  # No overlapping x:
  return 0 if r_left.max[0] < r_right.min[0]

  # Overlapping x:
  smaller_x_max = r_left.max[0]
  smaller_x_max = r_right.max[0] if r_right.max[0] < r_left.max[0]

  overlapping_x_range = smaller_x_max - r_right.min[0]

  # Determine the rectangles' relative y-positions
  r_bottom = r1
  r_top = r2

  if r2.min[1] < r1.min[1]
    r_bottom = r2
    r_top = r1
  end

  # No overlapping y:
  return 0 if r_bottom.max[1] < r_top.min[1]

  # Overlapping y:
  smaller_y_max = r_bottom.max[1]
  smaller_y_max = r_top.max[1] if r_top.max[1] < r_bottom.max[1]

  overlapping_y_range = smaller_y_max - r_top.min[1]

  # Area of overlap:
  area = overlapping_x_range.abs * overlapping_y_range.abs

  # Area of rectangle 1:
  r1_x_range = r1.max[0] - r1.min[0]
  r1_y_range = r1.max[1] - r1.min[1]
  r1_area = r1_x_range.abs * r1_y_range.abs

  return r1_area / area
end


puts 'OverlappingRectangles("(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)"):'
puts OverlappingRectangles("(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)")
puts
