class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail
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
      heading = heading.next_node until heading.next_node.nil?
      heading.next_node = an_object
    end
  end

  def get(indx)
    heading = @head
    indx.times do
      heading = heading.next_node
    end
    heading.value
  end

  def get_node(index)
    noder = @head
    index.times do
      raise 'The list is not long enough' if noder.nil?

      noder = noder.next_node
    end
    noder
  end

  def add_at(index, value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @head
    elsif index.zero?
      temp_var = @head
      @head = new_node
      @head.next_node = temp_var
    else
      before = get_node(index - 1)
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
      prev = get_node(index - 1)
      prev.next_node = nil
    else
      prev = get_node(index - 1)
      nex = deleted.next_node
      prev.next_node = nex
    end
  end
end

class Queue
  def initialize
    @linked = LinkedList.new
  end

  def add(number)
    @linked.add(number)
  end

  def remove
    if @linked.head.nil?
      val = -1
      return val
    else
      val = @linked.head.value
    end
    @linked.remove(0)
    val
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
