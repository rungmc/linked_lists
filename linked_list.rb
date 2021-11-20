require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = Node.new
  end

  def append(value)
    self.tail.next_node = Node.new(value)
  end

  def prepend(value)
    @head = Node.new(value, next_node = @head)
  end

  def size
    return 0 if head.value == nil
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
  end

  def pop
    tail = self.tail
    node = @head
    node = node.next_node until node.next_node == tail
    node.next_node = nil
    tail
  end

  def contains?(value)
  end

  def find?(value)
  end

  def to_s
  end

  def insert_at(value, index)
  end

  def remove_at(value, index)
  end
end
