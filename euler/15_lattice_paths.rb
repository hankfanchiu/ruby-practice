# Starting in the top left corner of a 2×2 grid,
# and only being able to move to the right and down,
# there are exactly 6 routes to the bottom right corner.
#
# How many such routes are there through a 20×20 grid?

def lattice_paths(grid_size)

  count = 1

  x = grid_size
  y = grid_size
  while x > 1 and y > 1
    for i in 1..x
