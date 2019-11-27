class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
    else 
        print "nil\n"
        return
    end 
end

class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    # def pop
    #     out = @data.value
    #     @data = LinkedListNode.new(@data.next_node.value, @data.next_node.next_node)
    #     puts out
    #     return out
    # end

    def pop
        out = @data.value
        if @data = LinkedListNode.new(@data.next_node.value, @data.next_node.next_node)
            puts out
        else
        return out
        end
    end

end

def reverse_list(list)

    while list
        
        list = list.next_node
    end

end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

#revlist = reverse_list(node3)

#print_values(revlist)

stack = Stack.new
stack.push(1)
stack.push(2)
stack.pop
stack.pop

