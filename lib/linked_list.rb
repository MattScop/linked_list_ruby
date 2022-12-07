require_relative 'node.rb'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def print_ll
    return p nil if head.nil?

    current_node = @head
    counter = 0
    while counter < self.size
      puts current_node.value
      current_node = current_node.next_node
      counter += 1
    end
  end

  def append(value)
    new_node = Node.new(value)
    return @head = new_node if head.nil? #first_value

    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?
    #we are at the end
    current_node.next_node = new_node
  end

  def prepend(value)
    return @head = Node.new(value) if head.nil? #first_value

    old_head = @head
    new_node = Node.new(value, old_head)
    @head = new_node
  end

  def size
    return 0 if head.nil?

    counter = 1
    current_node = @head
    until current_node.next_node.nil?
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  def head_node
    @head.value
  end

  def tail_node
    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node.value #tail
  end

  def at(index)
    return p nil if index >= self.size

    counter = 0
    current_node = @head
    until counter == index
      counter += 1
      current_node = current_node.next_node
    end
    current_node.value
  end

  def pop
    case self.size
    when 0 then return p nil
    when 1
      popped_node = @head
      @head = nil
      return popped_node.value
    else
      current_node = @head
      until current_node.next_node.next_node.nil? #check if the last_node's next_node is nil
        current_node = current_node.next_node
      end
      last_node = current_node.next_node.value
      current_node.next_node = nil #pop the last_node
      last_node #returns the popped element
    end
  end
end
