require '../lib/node'

class LinkedList
  attr_reader :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      temp_head = @head
      until temp_head.next_node.nil?
        temp_head = temp_head.next_node
      end
      temp_head.next_node = new_node
    end
    @size += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      temp_head = @head
      @head = new_node
      @head.next_node = temp_head
    end
    @size += 1
  end

  def tail
    temp_head = @head
    until temp_head.next_node.nil?
      temp_head = temp_head.next_node
    end
    temp_head.value
  end

  def at(index)
    index_count = 1
    temp_head = @head
    until index_count == index
      return "Node doesn't exist." if temp_head.next_node == nil
      temp_head = temp_head.next_node
      index_count += 1
    end
    temp_head.value
  end

  def pop
    index_count = 1
    temp_head = @head
    until index_count == @size - 1
      temp_head = temp_head.next_node
      index_count += 1
    end
    temp_head.next_node = nil
    @size -= 1
  end

  def contains?(value)
    temp_head = @head
    until temp_head.next_node.nil?
      temp_head = temp_head.next_node
      return true if temp_head.value == value
    end
    false
  end

  def find(data)
    temp_head = @head
    index = 1
    until temp_head.next_node.nil?
      return index if temp_head.value == data
      temp_head = temp_head.next_node
      index += 1
    end
  end

  def to_s
    temp_head = @head
    temp_string = ""
    until temp_head.next_node.nil?
      temp_string += "( #{temp_head.value} ) -> "
      temp_head = temp_head.next_node
    end
    temp_string += "( #{temp_head.value} ) -> nil" if temp_head.next_node.nil?
    temp_string
  end
end
