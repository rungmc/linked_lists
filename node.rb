class Node
  attr_accessor :val, :node

  def value(val = nil)
    @val = val
  end

  def next_node(node = nil)
    @node = node
  end
end
