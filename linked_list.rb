require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize(node = Node.new)
    @head = node
  end

  def append(value)
    self.tail.next_node = Node.new(value)
  end

  def prepend(value)
    @head = Node.new(value, next_node = @head)
  end

  def size
    return 0 if @head.value == nil
    count = 1
    node = @head
    until node.next_node == nil do
      node = node.next_node
      count += 1
    end
    count
  end

  def tail
    node = @head
    node = node.next_node until node.next_node == nil
    node
  end

  def at(index)
    node = @head
    while index > 0 do
      return puts "Error: no item at that index." if node.next_node == nil
      node = node.next_node
      index -= 1
    end
    node
  end

  def pop
    tail = self.tail
    node = @head
    node = node.next_node until node.next_node == tail
    node.next_node = nil
    tail
  end

  def contains?(value)
    node = @head
    until node.next_node == nil do
      return true if node.value == value
      node = node.next_node
    end
    return true if node.value == value
    false
  end

  def find(value)
    return nil unless self.contains?(value)
    index = 0
    node = @head
    until node.value == value do
      node = node.next_node
      index += 1
    end
    index
  end

  def to_s
    node = @head
    list = "( #{node.value} ) -> "
    until node.next_node == nil do
      node = node.next_node
      list += "( #{node.value} ) -> "
    end
    list += "nil"
    list
  end

  def insert_at(value, index)
  end

  def remove_at(index)
  end
end
