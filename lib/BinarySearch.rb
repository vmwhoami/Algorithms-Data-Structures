# Hint the array has to be sorted
# If it is sorted there is an indication that binary search can be used
def binary_search(arr, target)
  pointer = arr.size / 2
  return -1 if arr.size.zero?

  return arr[pointer] if arr[pointer] == target

  return binary_search(arr[0...pointer], target) if arr[pointer] > target

  return binary_search(arr[(pointer + 1)...arr.size], target) if arr[pointer] < target
end

p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], 33) #=> 33
p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], 72) #=> 72
p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], 73) #=> 73
p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], -1) #=> -1
p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], 100) #=> -1
p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], 0) #=> 0
p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], 1) #=> 1