def valid_bst?(root)
  validate(root, Integer::MIN, Integer::MAX)
end

def validate(root, min, max)
  return true unless root
  return false if (root.val <= min) || (root.val >= max)

  validate(root.left, min, root.val) && validate(root.right, root.val, max)
end
