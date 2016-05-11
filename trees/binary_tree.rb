module Trees
  class BinaryTree
    attr_reader :root

    class Node
      attr_reader :value, :left, :right

      def initialize(value)
        @value = value
        @left = nil
        @right = nil
      end

      def insert_left(value)
        @left = Node.new(value)
      end

      def insert_right(value)
        @right = Node.new(value)
      end
    end

    def initialize(root_value)
      @root = Node.new(root_value)
    end

    def preorder(node)
      result = []
      result << @root.value # start at root and add it's value
      result << preorder_subtree(node.root.left) # traverse left sub-tree
      result << preorder_subtree(node.root.right) # traverse right sub-tree
      result.flatten 
    end

    private 
    def preorder_subtree(node, result = [])
      result << node.value
      preorder_subtree(node.left, result) if node.left != nil
      preorder_subtree(node.right, result) if node.right != nil
      result
    end
  end
end
