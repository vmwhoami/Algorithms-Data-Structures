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
  end

  
  

end


list = LinkedList.new(node: Node.new(value: "the value"))