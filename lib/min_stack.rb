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
  @array = []
 end
 def push(number)
  @array << number
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
  @array.pop
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
   @array.min
  end
end

stack = Stack.new
stack.push(3)

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