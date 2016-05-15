# Pronounced "tree"
require 'byebug'

describe Trees::Trie do
  before :each do
    @trie = Trees::Trie.new
  end

  context 'initialization' do
    it 'should initialize with a new TrieNode' do
      expect(@trie.root.class).to eq Trees::Trie::TrieNode
    end

    it 'should initialize with a property isLeaf' do
      expect(@trie.root.respond_to?(:is_leaf)).to eq true
    end

    it 'should intialize with a property children' do
      expect(@trie.root.respond_to?(:children)).to eq true
    end

    it 'isLeaf should be boolean' do
      expect(@trie.root.is_leaf).to eq false
    end

    it 'children should be a hash' do
      expect(@trie.root.children.class).to eq Hash
    end
  end

  context 'insertion' do
    before :each do
      @trie.insert('ace') # initial prefix
      @trie.insert('acer')
      @trie.insert('aces')
      @trie.insert('actor')
    end
    it 'should insert a word' do
      # (a)
      #  |
      # (c)
      #  |
      # (e)
      expect(@trie.root.children.keys[0]).to eq 'a'
      expect(@trie.root.children['a'].children.keys[0]).to eq 'c'
      expect(@trie.root.children['a'].children['c'].children.keys[0]).to eq 'e'
    end

    it 'should only append if word already contains prefix' do
      #   (a)
      #    |
      #   (c)
      #    |
      #   (e)
      #   /
      # (r)
      expect(@trie.root.children['a'].children['c'].children['e'].children.keys[0]).to eq 'r'
    end

    it 'should add a second key if there is an existing key at same height' do
      #   (a)
      #    |
      #   (c)
      #    |
      #   (e)
      #   / \
      # (r) (s)
      expect(@trie.root.children['a'].children['c'].children['e'].children.keys[1]).to eq 's'
    end

    it 'should add a new word only where the prefix matches' do
      #   (a)
      #    |
      #   (c)
      #    |      \
      #   (e)    (t)
      #   / \     |
      # (r) (s)  (o)
      #           |
      #          (r)
      expect(@trie.root.children['a'].children['c'].children['t'].children['o'].children.keys[0]).to eq 'r'
    end
  end
end
