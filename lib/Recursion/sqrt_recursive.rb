def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  arr = (min_interval..max_interval).to_a
  middle_index = arr.size / 2
  middle_value = arr[middle_index]
  answer = middle_value * middle_value
  return middle_value if answer == number

  if answer > number
    sqrt_recursive(number, min_interval, arr[middle_index - 1])
  else
    sqrt_recursive(number, arr[middle_index + 1], arr[-1])
  end
end

# puts sqrt(25)
puts sqrt(225)
puts sqrt(841)
puts sqrt(1024)
puts sqrt(7056)
