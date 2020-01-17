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
        if @data == nil
           return "nil"
        else 
             @data = LinkedListNode.new(value, @data)
        end
    end

    # def pop
    #     out = @data.value
    #     @data = LinkedListNode.new(@data.next_node.value, @data.next_node.next_node)
    #     puts out
    # end

    def pop
        out = ""

        if @data.next_node == nil
            out = "nil"
            return out
        elsif @data.next_node != nil
            out = @data.value
            @data = LinkedListNode.new(@data.next_node.value, @data.next_node.next_node)
            puts out
        else
            return out
        end
    end

end

def reverse_list(list)
    new_list = Stack.new

    while list
        current_value = list.pop
        puts current_value
        new_list.push(current_value)
        #list = list.next_node
    end

    return new_list
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
stack.push(3)
stack.push(4)
stack.push(5)
stack.push(6)
stack.push(7)
stack.pop
#stack.pop
reverse_list = reverse_list(stack)
print_values(stack)