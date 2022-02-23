# Hint the array has to be sorted
# If it is sorted there is an indication that binary search can be used
def binary_search(arr, target)
  pointer = arr.size / 2
  return arr[pointer] if arr[pointer] == target

  if arr[pointer] > target
    binary_search(arr[0...pointer], target)
  else
    binary_search(arr[(pointer + 1)...arr.size], target)
  end
end

p binary_search([0, 1, 21, 33, 45, 45, 61, 71, 72, 73], 33)