# The method sqrt takes in one square number.

# Fill the method sqrt_recursive that returns the square root of a given number.
# Do not use any built in methods for calculating the square-root and don't try searching
#  through all the numbers.
#  Instead, use a binary-style search to home in on the actual square root.
# (To make it simpler, the input will just contain square numbers.)

def sqrt(number)
  n = number
  while n * n != number
    n -= 1
    return 'No square' if n.negative?
  end
  n
end

# def sqrt_recursive(number, min_interval, max_interval)

#   if (min_interval <= max_interval)
#     mid = (min_interval + max_interval) % 2
#   end

# end

puts sqrt(25)
# => 5

puts sqrt(7056)
# => 84

# Function to find the square
# root of the number N using BS
# def sqrtSearch(low, high, N) :

# 	# If the range is still valid
# 	if (low <= high) :

# 		# Find the mid-value of the range
# 		mid = (low + high) // 2;

# 		# Base Case
# 		if ((mid * mid <= N) and ((mid + 1) * (mid + 1) > N)) :
# 			return mid;

# 		# Condition to check if the
# 		# left search space is useless
# 		elif (mid * mid < N) :
# 			return sqrtSearch(mid + 1, high, N);

# 		else :
# 			return sqrtSearch(low, mid - 1, N);

# 	return low;
