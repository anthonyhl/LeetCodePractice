# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  height(root) != -1
end

def height(root)
  return 0 if root.nil?
  l = height(root.right)
  r = height(root.left)

  if l < 0 || r < 0 || (l - r).abs > 1
    -1
  else
    [l, r].max + 1
  end
end
