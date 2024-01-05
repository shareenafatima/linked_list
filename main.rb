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
  linked_list.append(1)
  linked_list.append(2)
  linked_list.append(3)
  
  linked_list.display