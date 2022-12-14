require_relative 'linked_list.rb'

linked_list = LinkedList.new

# APPEND (10)-->(20)-->(30)-->(40)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.print_ll

# PREPEND (1)-->(5)-->(10)-->(20)-->(30)-->(40)-->(50)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(1)
# linked_list.append(50)
# linked_list.print_ll

# SIZE (8)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# puts linked_list.size

# HEAD (3)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# puts linked_list.head_node

# TAIL (50)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# puts linked_list.tail_node

# AT (2)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# p linked_list.at(1)
# p linked_list.at(0)
# p linked_list.at(-1)

# POP (50)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# p linked_list.pop
# linked_list.print_ll

# CONTAINS? (true), (false)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# puts linked_list.contains?(10)
# puts linked_list.contains?(0)

# FIND (3)
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.append(50)
# p linked_list.find(30)

# TO_S
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# linked_list.to_s

# INSERT_AT (1) -> (3) -> (2) -> (8) -> (5) -> (10) -> (20) -> (30) -> (40) -> (50) -> (60) -> nil
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# linked_list.insert_at(1, 0)
# linked_list.insert_at(8, 2)
# linked_list.insert_at(60, -1)
# linked_list.to_s

# REMOVE_AT (2) -> (5) -> (20) -> (30) -> (40) -> nil
# linked_list.append(10)
# linked_list.append(20)
# linked_list.append(30)
# linked_list.append(40)
# linked_list.prepend(5)
# linked_list.prepend(2)
# linked_list.prepend(3)
# linked_list.append(50)
# linked_list.remove_at(0)
# linked_list.remove_at(2)
# linked_list.remove_at(-1)
# linked_list.to_s
