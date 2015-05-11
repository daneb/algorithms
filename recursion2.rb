require 'minitest/spec'
require 'minitest/autorun'

## First Principle: You have to believe that the method is just going to work

def append2(array, n)
  n.downto(0) { |i| array << i }
  array
end

def append_man(array, n)
  return append2(array, n)
end

def append(array, n)
  return array if n < 0
  array << n
  append(array, n - 1)
end

describe "Append to Array Recursion" do
  it "Should return [2,1,0] for n = 2" do
    (append_man [], 2).must_equal [2,1,0]
  end

  it "Should return [3,2,1,0] for n = 3" do
    (append_man [], 3).must_equal [3,2,1,0]
  end
end
