def tree_height(tree_as_list)
  tree_as_list.pop
  popped_value = 2
  height = 1
  until tree_as_list.empty?
    tree_as_list.pop(popped_value)
    popped_value *= 2
    height += 1
  end
  height
end

# tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

# puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# # => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# # => 4
