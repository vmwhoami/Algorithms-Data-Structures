def leftmost_nodes_sum(array)
 result = 0
 i = 0 
 until i >= array.size 
  result+=array[i]
  i = 2*i+1
 end 
 result
end

# puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11

# 2i+1
puts  leftmost_nodes_sum([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 13

# puts  leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])
# =>  29