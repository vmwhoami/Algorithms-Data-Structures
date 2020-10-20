# Complete the palindromeIndex function in the editor below.
# It must return the index of the character to remove or -1 .

def palindrome_index(str)
  first = 0
  last = -1
  while str[first] == str[last] && first < str.size

    first += 1
    last -= 1
  end
end

p palindrome_index('amanaplanacanalpanama!') #=>21

# load "lib/palindrom_index.rb"
