class Node
  attr_accessor :value, :head, :tail, :next_node

  def initialize(head: nil,tail: nil,value: nil,next_node: nil)
    @head = nil
    @tail = nil
    @value = nil
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :node
  def initialize(node:)
    @node = node
    add_node
  end

  def set_head
   self.node.head = self.node if self.node.head.nil?
  end

  def remove_nodes_with(value)
  end

  def insert_node_at(position)
  end

  

  def set_tail
  end
  
  def search_node
  end

  def remove_node


  def add_node
    self.set_head if self.node.head.nil?
  end

end


list = LinkedList.new(node: Node.new(value: "the value"))
 p list