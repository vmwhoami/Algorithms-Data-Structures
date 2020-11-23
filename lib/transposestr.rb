def transpose(string)
  q = []
  s = []
  string.each_char do |char|
    if char == 'g'
      q.push(char)
    elsif char == 'n'
      q.unshift(char)
    else
      s << q
      s << char
      q = []
    end
  end

  s << q
  s.flatten.join
end

p transpose('he was searchign on sign for signign kigns')
# => he was searching on Bing for singing kings

# p transpose('rignadingdiggn!')
# => ringadingdingg!

# puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg
