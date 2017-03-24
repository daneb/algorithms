require_relative 'linkedlist/linked_list'
# =LoadError: cannot load such file -- /Users/danebalia/Documents/Github/Personal/algorithms_ruby/linkedlist/linked_list_example
# = from (irb):1:in `require_relative'
# = from (irb):1
# = from /Users/danebalia/.rvm/rubies/ruby-2.2.1/bin/irb:11:in `<main>'

class Stack
  def initialize
    @current = nil
  end

  def pop
    raise 'Stack is empty' if @current.empty? 
    top_of_stack = @current
    @current = top_of_stack.next_node
    top_of_stack.value
  end

  def push(value)
     @current = Node.new(value, @current)
  end

  def is_empty?
    @current.nil?
  end

end

s = Stack.new
s.pop
s.push("Friday")
s.push("Saturday")
s.push("Sunday")
