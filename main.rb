class Node
    attr_accessor :data, :next_node
  
    def initialize(data, next_node = nil)
      @data = data
      @next_node = next_node
    end
end
  
class LinkedList
    attr_accessor :head
  
    def initialize
      @head = nil
    end
  
    def append(data)
      if @head.nil?
        @head = Node.new(data)
      else
        current = @head
        while current.next_node
          current = current.next_node
        end
        current.next_node = Node.new(data)
      end
    end
  
    def prepend(data)
        new_node = Node.new(data)
        new_node.next_node = @head
        @head = new_node
    end
  
    def size
        counter = 0
        current = @head
        while current
            counter += 1
            current = current.next_node
        end
        counter
    end

    def head
        @head
    end

    def tail
        current = @head
        while current.next_node
            current = current.next_node
        end
        current 
    end

    def at(index)
        current_index = 1
        current = @head
        while current_index < index && current.next_node
            current = current.next_node
            current_index += 1
        end
        current_index == index ? current :nil
    end

    def display
      current = @head
      while current
        print "#{current.data}, "
        current = current.next_node
      end
      puts "nil"
    end
end
  
  linked_list = LinkedList.new
  linked_list.append(4)
  linked_list.append(5)
  linked_list.append(6)
  linked_list.prepend(3)
  linked_list.prepend(2)
  
  puts "size of the linked list: #{linked_list.size}"
  puts "Head of the linked list: #{linked_list.head.data}"
  puts "Tail of the linked_list: #{linked_list.tail.data}"
  puts "Node of the linked_list: #{linked_list.at(3).data}"
  linked_list.display
