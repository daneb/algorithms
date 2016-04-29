# Arrays are designed for random access of a large set.
# Linked Lists work well for "inserting, removing or re-ordering elements"

# Linked Lists are data structures that make up a Stack.

# Definition:  A Linked List is a simple object (we'll call it a Node) which has its own value or data,
# plus a pointer to the next Node in the list
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

