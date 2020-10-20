def transpose(string)
str = []
que = []
  string.each_char.with_index do |char,indx| 
    if char == "g" 
    que.push(char)  
    elsif char == "n" 
        que.unshift(char) 
    else
    str << que
     str << char
     que = []
    end
  end
  str<<que
  str.flatten.join
end

p transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

# p transpose('rignadingdiggn!')
# => ringadingdingg!

# puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg