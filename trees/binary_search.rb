class BinarySearchTree

  attr_reader :root

  class Node
    attr_reader :data, :left, :right

    def initialize(data)
      @data = data
      @left = nil
      @right = nil
    end  
  end

  def insert(data)
    if @root.nil?
      @root = Node.new(data)
    else
      #@root.insert()
    end
  end

  def initialize()
    @root = nil
  end
end
# ==> nil

bst = BinarySearchTree.new
# ==> #<BinarySearchTree:0x007fe0830024c0 @root=nil>
bst.insert(15)
# ==> nil
