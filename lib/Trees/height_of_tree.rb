def binary_tree_height(array_tree)
 
  array_tree.pop
  tree_counter = 2
  height_counter = 1
  until array_tree.empty?
     array_tree.pop(tree_counter)
     tree_counter*=2
     height_counter+=1
  end
 height_counter
end


binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3