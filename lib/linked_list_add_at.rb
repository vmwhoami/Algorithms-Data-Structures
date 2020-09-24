

class Node
  attr_accessor :value, :next_node
  def initialize(value,next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
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
    (index-1).times do
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
    elsif index == 0
      temp_var = @head
      @head = new_node
      @head.next_node = temp_var
    else
      before= get_node(index-1)
      former_node = before.next_node
      before.next_node = new_node
      new_node = before.next_node
      new_node.next_node = former_node

    end
    
  end

 end

list = LinkedList.new

list.add(3)
list.add(5)
 list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11
# 13 3 11 5
# puts list.get(3)
# => 5