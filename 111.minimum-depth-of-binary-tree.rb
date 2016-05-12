def min_depth(root)
  return 0 unless root
  return min_depth(root.left) + 1 unless root.right
  return min_depth(root.right) + 1 unless root.left
  [min_depth(root.left), min_depth(root.right)].min + 1
end

