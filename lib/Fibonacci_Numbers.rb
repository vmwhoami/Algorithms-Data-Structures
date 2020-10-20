def even_fib_sum(num)
  fb1 = 1
  fb2 = 1

  loop do
    fib = fb1 + fb2
    return if fib >= num
  end
end
