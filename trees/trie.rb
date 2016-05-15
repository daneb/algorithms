module Trees
  class Trie

    attr_accessor :root

    class TrieNode
      attr_accessor :is_leaf, :children

      def initialize
        @children = Hash.new
        @is_leaf = false
      end
    end

    def initialize
      @root = TrieNode.new
    end

    def insert(word)
      children = @root.children

      word.split('').each_with_index  do |char, index|
        trienode = TrieNode.new
        if children.has_key?(char)
          trienode = children[char]
        else
          trienode = TrieNode.new
          children[char] = trienode
        end

        children = trienode.children
        trienode.is_leaf = true if (index == (word.length - 1))
      end
    end

    def search(word)
      trienode = search_node(word)
      return true if (not trienode.nil? and trienode.is_leaf)
      false
    end

    def starts_with(prefix)
      return false if search_node(prefix).nil?
      true
    end

    private
    def search_node(string)
      children = @root.children
      trienode = TrieNode.new
      string.split('').each_with_index do |char, index|
        if children.has_key?(char)
          trienode = children[char]
          children = trienode.children
        else
          return nil
        end
      end
      trienode
    end
  end
end
