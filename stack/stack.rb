require_relative '../linkedlist/linked_list_example'

# Attributes:
# LIFO - Last In First Out
# Everything works in relation to the top of the Stack
# Each item on the stack is an element of a Linked List.
# An item has a value, but also has a pointer to another 

class Stack
  def initialize
    @current = nil
  end

  def pop
    raise 'Stack is empty' if is_empty?
    top_of_stack = @current
    @current = top_of_stack.next_node
    top_of_stack.value 
  end

  def push(value)
    @current = Node.new(value, @current)
  end
  alias_method :'<<', :push

  def is_empty?
    @current.nil?
  end
end