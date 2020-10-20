def balanced_brackets?(string)
 stack = []
 # strip only the brakets
brackets = brackets(string)
return true if brackets.empty?
brackets.each do |ch|
  if ['(','[','{'].include?(ch)
    stack << ch
  else
    # ? return false if stack.empty?
    top = stack.pop
    if (top == '(' && ch != ')')||
      (top == '[' && ch != ']')||
      (top == '{' && ch != '}')
      return false
    end
  end
end
stack.empty?
end

def brackets(s)
  b = ['(',')','[',']','{','}']
  a = []
  s.each_char{|c| a << c if b.include?(c) }
  a
end


# p  balanced_brackets?('Hello world')
 

# p  balanced_brackets?('(hello)[world]')
# # => true

# p balanced_brackets?('([)]')
# => false

# p balanced_brackets?('[({}{}{})([)]')
p balanced_brackets?('(')
# => true