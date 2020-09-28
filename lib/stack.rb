

class Node
  attr_accessor :value, :next_node
  def initialize(value,next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head,:tail
  def initialize
    @head = nil
    @tail = nil 
  end
  
  def add(number)
    an_object = Node.new(number)
    if @head.nil?
      @head = an_object
    else
      heading = @head
      while heading.next_node != nil
        heading = heading.next_node
      end
      heading.next_node = an_object
    end
  end
  
  def get(indx)
    heading = @head
    indx.times do
      heading  = heading.next_node
    end
    heading.value
  end
  
  def get_node(index)
    noder = @head
    index.times do
      raise "The list is not long enough" if noder.nil?
      noder  = noder.next_node
    end
    noder
  end

  def add_at(index,value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      return @head
    elsif index.zero?
      temp_var = @head
      @head = new_node
      @head.next_node = temp_var
    else
      before = get_node(index-1)
      ex_node = before.next_node
      before.next_node = new_node
      new_node = before.next_node
      new_node.next_node = ex_node
    end
  end

  def remove(index)
    deleted = get_node(index)
    if index.zero?
      @head = deleted.next_node
    elsif deleted.next_node.nil?
      prev = get_node(index-1)
      prev.next_node = nil
    else
      prev = get_node(index-1)
      nex = deleted.next_node
      prev.next_node = nex
    end
  end

end

class Stack
  # attr_accessor :linked_l
  def   initialize 
    @linked_l =  LinkedList.new
  end
 
  def push(number)
    @linked_l.add(number)
    @linked_l 
  end
  
  def pop
  last = @linked_l.head
  indx = 0
  if last != nil
   while last.next_node != nil
    indx+=1
    last = last.next_node
   end
  end
  val = last.value
  @linked_l.remove(indx)
  val
  end
end


stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3