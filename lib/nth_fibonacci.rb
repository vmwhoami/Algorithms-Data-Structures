def nth_fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  return nth_fibonacci(n-1) + nth_fibonacci(n-2)
end

p nth_fibonacci(8)
