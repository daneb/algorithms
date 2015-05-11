require 'minitest/spec'
require 'minitest/autorun'

def reverse_append(array, n)
  return array if n < 0
  reverse_append(array, n - 1)
  array << n
end

describe "Reverse append recursion" do
  it "should return [] if n is -1" do
    (reverse_append [], -1).must_equal []
  end

  it "should return [0] if n is 0" do
    (reverse_append [], 0).must_equal [0]
  end

  it "should return [0, 1] if n is 1" do
    (reverse_append [], 1).must_equal [0, 1]
  end

  it "should return [0, 1, 2] if n is 2" do
    (reverse_append [], 2).must_equal [0, 1, 2]
  end

end

