def anagram(s)
  return -1 if s.size.odd?
  str_a = s[0...s.size / 2].split('')
  str_b = s[s.size / 2..-1].split('')
  str_a.each do |char_a|
    str_b.each_with_index do |char_b,indx|
      if char_a == char_b
        str_b.delete_at(indx)
        break
      end
    end
  end
  str_b.size
end

p anagram('aaabbb') #=> 3
p anagram("ab") #=>1
p anagram('abc') #=>-1
p anagram('mnop') #=>2
p anagram('xyyx') #=>0
p anagram('xaxbbbxx') #=>1

# p anagram('asdfjoieufoa') #=>3
# p anagram('fdhlvosfpafhalll') #=>5
# p anagram('mvdalvkiopaufl') #=>5
