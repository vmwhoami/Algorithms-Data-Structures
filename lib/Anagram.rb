def anagram(s)
  return -1 if s.size.odd?

  str_a = s[0...s.size / 2]
  str_b = s[s.size / 2..-1]
  h_a = Hash.new(0)
  h_b = Hash.new(0)
  str_a.each_char { |char| h_a[char] += 1 }
  str_b.each_char { |char| h_b[char] += 1 }
  return 0 if h_a == h_b
end

# p anagram('aaabbb') #=> 3
# p anagram("ab") #=>1
# p anagram('abc') #=>-1
# p anagram('mnop') #=>2
# p anagram('xyyx') #=>0
# p anagram('xaxbbbxx') #=>1

# p anagram('asdfjoieufoa') #=>3
p anagram('fdhlvosfpafhalll') #=>5
# p anagram('mvdalvkiopaufl') #=>5

# ["f", "d", "h", "l", "v", "o", "s", "f"]

# ["p", "a", "f", "h", "a", "l", "l", "l"]

# ["d", "v", "o", "s"]
