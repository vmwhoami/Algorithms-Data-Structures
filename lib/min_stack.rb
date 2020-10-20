class Node
  attr_accessor :value, :next_node
  def initialize value
    @value = value
  end
end

class Stack
 def initialize
  @head = nil
  @tail = nil
 end
 def push(number)
  new_node =  Node.new(number)
  if @head.nil?
    @head = new_node
    @tail = @head
  else
    head = @head
    while head.next_node != nil
      head = head.next_node
    end
      head.next_node = new_node
      @tail = head.next_node
  end
end

def pop

  if @head.nil?
    return "There are no more elements in the stack"
  else
      if @head.next_node.nil?
      val = @head.value
      @tail = nil
      @head = @tail
      return val
    end
    tail = @tail.value
    head = @head
    
    while head.next_node != @tail
      head = head.next_node
    end
    @tail = head
    head.next_node = nil
    tail
  end
end
  
  def min
    if @head.nil?
      return "There are no elements in the stack"
    elsif @head.next_node.nil?
      return @head.value
    else
      looper = @head
      @min = @head.value
      while looper.next_node != nil
        
        @min = looper.value if looper.value < @min
        @min = looper.next_node.value if looper.next_node.value < @min
        looper = looper.next_node  
      end
   
    end
    @min
  end
end

stack = Stack.new
stack.push(1)

stack.push(5)
puts stack.min
# # => 3

stack.pop
stack.push(7)
puts stack.min
# # => 3

stack.push(2)
puts stack.min
# # => 2

stack.pop
puts stack.min
# => 3