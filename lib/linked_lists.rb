class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  # setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    # your code here
    just_a_node = Node.new(number)
    if @head.nil?
      @head = just_a_node
    else
      noding = @head
      noding = noding.next_node until noding.next_node.nil?
      noding.next_node = just_a_node
    end
  end

  def get(index)
    # your code here
    the_node = @head
    index.times do
      the_node = the_node.next_node
    end
    the_node.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add(6)
list.add(19)
puts list.get(3)
# => 5
