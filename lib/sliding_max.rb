def sliding_maximum(k, array)
i = 0
a = []
while   k <= array.length
 a << array[i...k].max
  k+=1
  i+=1
end
a
end

p sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
