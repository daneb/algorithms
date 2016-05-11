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

    def inorder(node)
      result = []
      result << inorder_subtree(node.root.left) # traverse left sub-tree
      result << @root.value # start at root and add it's value
      result << inorder_subtree(node.root.right) # traverse right sub-treeresult.flatten
      result.flatten
    end

    def postorder(node)
      result = []
      result << postorder_subtree(node.root.left) # traverse left sub-tree
      result << postorder_subtree(node.root.right) # traverse right sub-treeresult.flatten
      result << @root.value # start at root and add it's value
      result.flatten
    end

    private
    def preorder_subtree(node, result = [])
      result << node.value
      preorder_subtree(node.left, result) if node.left != nil
      preorder_subtree(node.right, result) if node.right != nil
      result
    end

    def inorder_subtree(node, result = [])
      inorder_subtree(node.left, result) if node.left != nil
      result << node.value
      inorder_subtree(node.right, result) if node.right != nil
      result
    end

    def postorder_subtree(node, result = [])
      postorder_subtree(node.left, result) if node.left != nil
      postorder_subtree(node.right, result) if node.right != nil
      result << node.value
      result
    end
  end
end
