def lowest_common_ancestor(root, node1, node2)
  while root
    if (node1.val < root.val) && (node2.val < root.val)
      root = root.left
    elsif (root.val < node1.val) && (root.val < node2.val)
      root = root.right
    else
      return root
    end
  end

  nil
end
