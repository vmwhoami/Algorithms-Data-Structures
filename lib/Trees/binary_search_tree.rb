class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def insert(node)
   the_node = Node.new(node)
    p the_node
  end

  def pre_order(node = @root)
    return "" if @root.nil?
    result = "#{node.data}"
    result +=  pre_order(node.left)
    result += pre_order(node.right)

  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

 binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
p binary_search_tree.insert(7)