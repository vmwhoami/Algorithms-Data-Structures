def validate_subsiquance(arr,subsequence)
  arr_index = 0
  seq_index = 0
  while arr_index < arr.size && seq_index < arr.size
    seq_index += 1 if subsequence[seq_index] == arr[arr_index]
    arr_index += 1
  end
  seq_index == subsequence.size
end

p validate_subsiquance([ 5, 1, 22, 25, 6, -1, 8, 10],[1, 6, -1, 10]) #=> true 5 1