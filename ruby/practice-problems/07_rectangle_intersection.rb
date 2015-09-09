# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5

def rec_intersection(rect1, rect2)
end


# Test cases:
# it handles a simple case
p rec_intersection([[0, 0], [2, 1]], [[1, 0], [3, 1]])
#=> [[1, 0], [2, 1]]

# it returns the smaller rectangle if engulfed completely
p rec_intersection([[1, 1], [2, 2]], [[0, 0], [5, 5]])
#=> [[1, 1], [2, 2]]

# it returns nil if there is no intersection
p rec_intersection([[1, 1], [2, 2]], [[4, 4], [5, 5]])
#=> nil

# it handles a more complex case
p rec_intersection([[1, 1], [5, 4]], [[2, 2], [3, 5]])
#=> [[2, 2], [3, 4]]
