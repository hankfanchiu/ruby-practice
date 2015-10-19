# Using the Ruby language, have the function OptimalAssignments(strArr)
# read strArr which will represent an NxN matrix
# and it will be in the following format: ["(n,n,n...)","(...)",...]
# where the n's represent integers.
#
# This matrix represents a machine at row i performing task at column j.
# The cost for this is matrix[i][j].
#
# Your program should determine what machine should perform what task
# so as to minimize the whole cost and it should return the pairings
# of machines to tasks in the following format: (i-j)(...)...
#
# Only one machine can perform one task.
#
# For example: if strArr is ["(5,4,2)","(12,4,3)","(3,4,13)"]
# then your program should return (1-3)(2-2)(3-1)
# because assigning the machines to these tasks gives the least cost.
#
# The matrix will range from 2x2 to 6x6,
# there will be no negative costs in the matrix,
# and there will always be a unique answer.

def OptimalAssignments(strArr)

  # Parse the array elements into subarrays of integers.
  matrix = strArr.map do |row|
    row.scan(/\d+/).map(&:to_i)
  end

  min_cost = nil
  answer = nil

  # Determine the cost of each permutation of task indexes.
  task_idx_permutations = (0..matrix.size - 1).to_a.permutation.to_a
  task_idx_permutations.each do |task_indexes|
    cost = 0
    pairings = ""

    task_indexes.each_with_index do |j, i|
      cost += matrix[i][j]
      pairings << "(#{i + 1}-#{j + 1})"
    end

    # Only keep the lowest cost and the corresponding machine-task pairings.
    if min_cost == nil || cost < min_cost
      min_cost = cost
      answer = pairings
    end
  end

  return answer
end


# Test cases:
puts(
  OptimalAssignments(["(5,4,2)","(12,4,3)","(3,4,13)"]) == "(1-3)(2-2)(3-1)"
)

puts(
  OptimalAssignments(["(1,2,1)","(4,1,5)","(5,2,1)"]) == "(1-1)(2-2)(3-3)"
)

puts(
  OptimalAssignments(["(13,4,7,6)","(1,11,5,4)","(6,7,2,8)","(1,3,5,9)"]) ==
  "(1-2)(2-4)(3-3)(4-1)"
)
