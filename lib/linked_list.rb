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
    counter = 0
    return counter if head.nil?

    current_node = @head
    until current_node.nil?
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
    return nil if index >= self.size

    counter = 0
    current_node = @head
    index = self.size - 1 if index == -1 #set the index to tail if a value of -1 is given
    until counter == index
      counter += 1
      current_node = current_node.next_node
    end
    current_node.value
  end

  def pop
    case self.size
    when 0 then return nil
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

  def contains?(value)
    current_node = @head
    until current_node.nil?
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    counter = 0
    current_node = @head
    until current_node.nil?
      return counter if current_node.value == value

      counter += 1
      current_node = current_node.next_node
    end
    nil
  end

  def to_s
    return p nil if head.nil?

    current_node = @head
    ll = ''
    until current_node.nil?
      if current_node.next_node.nil?
        ll += "(#{current_node.value}) -> nil"
      else
        ll += "(#{current_node.value}) -> "
      end
      current_node = current_node.next_node
    end
    print "#{ll}\n"
  end

  def insert_at(value, index)
    string = "No value at the given index"
    return p string if index > self.size

    new_node = Node.new(value)
    current_node = @head
    idx = 0
    case index
    when 0
      old_head = @head
      return @head = Node.new(value, old_head)
    when -1
      index = self.size - 1
      while idx < index
        idx += 1
        current_node = current_node.next_node
      end
      return current_node.next_node = new_node
    else
      while idx < index
        if idx == index - 1 #check for the second_last_one
          previous_node = current_node
          next_node = current_node.next_node
        end
        idx += 1
        current_node = current_node.next_node
      end
      #insert between the previous and the next node
      previous_node.next_node = new_node
      new_node.next_node = next_node
    end
  end
end
