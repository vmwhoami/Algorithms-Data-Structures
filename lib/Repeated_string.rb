def repeated_string(str, num)
  time_a = str.count('a')
  remainder = str[0...num % str.size].count('a')
  divider = num / str.size
  time_a * divider + remainder
end

#  p repeatedString("a", 1000000000000) #=>1000000000000
# p repeatedString("abcac", 10) #=>4
# p repeatedString('aba' , 10) # => 7
# p repeatedString('baca' , 10) # => 5

# bacabacaba
