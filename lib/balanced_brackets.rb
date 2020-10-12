def balanced_brackets?(string)
 stack = []
 brackets =  separate_brackets(string)
 brackets.each do |char|
  if ['(','[','{'].include?(char)
    stack.push(char)
  else 
    return -1 if stack.empty?
      top = stack.pop
     if (top == '(' && char != ')')||
      (top == '[' && char != ']')||
      (top == '{' && char != '}')
      return -1
     end
  end
 end
 stack.empty?
end

def separate_brackets(s)
 brackets = ['(',')','[',']','{','}']
 b = []
  s.each_char{|c| b << c if brackets.include?(c) }
  b
end



# p  balanced_brackets?('(')
 
p  balanced_brackets?('(hello)[world]')
# # => true

# p balanced_brackets?('([)]')
# => false

# p balanced_brackets?('[({}{}{})([])]')
# p balanced_brackets?('(')
# => true