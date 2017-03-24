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
# ==> :initialize

a = Node.new(100, nil)
# ==> #<Node:0x007fbf95934688 @value=100, @next_node=nil>
t = Node.new(5, a)
# ==> #<Node:0x007fbf96084118 @value=5, @next_node=#<Node:0x007fbf95934688 @value=100, @next_node=nil>>
x = Node.new(6, a)
# ==> #<Node:0x007fbf96076310 @value=6, @next_node=#<Node:0x007fbf95934688 @value=100, @next_node=nil>>
a.next_node = t
# ==> #<Node:0x007fbf96084118 @value=5, @next_node=#<Node:0x007fbf95934688 @value=100, @next_node=#<Node:0x007fbf96084118 ...>>>

x.value
# ==> 6
x.next_node.value
# ==> 100

