require_relative 'node.rb'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    return @head = new_node if head.nil? #first_value

    @head = head.next_node until head.next_node.nil?
    #we are at the end
    head.next_node = new_node
  end

  def prepend(value)
    old_head = @head
    new_node = Node.new(value, old_head)
    @head = new_node
  end

  def size
    return 0 if head.nil?

    counter = 1
    until head.next_node.nil?
      counter += 1
      @head = head.next_node
    end
    counter
  end

  def head_node
    head
  end
end
