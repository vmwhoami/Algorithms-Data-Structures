require 'ostruct'
class Node
  attr_accessor :value, :nex, :prev

  def initialize(value: nil,next: nil, prev: nil)
    @value = nil
    @next = nil
    @prev = nil
  end
end
class LinkedList
  attr_accessor :node

  def initialize(node: nil, head: nil,tail: nil)
    @head = nil
    @tail = nil
    @node = node
  end

  def set_head
    
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
  end

  def add_node
    self.set_head if self.node.head.nil?
  end

end

obj = OpenStruct.new

obj.name = 'Vitalie'
obj.surname = 'Melnic'
obj.subobject = {age: 36, sex: "male",married: true} 

linked_list = LinkedList.new(node: Node.new(obj))
p linked_list