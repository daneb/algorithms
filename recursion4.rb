require 'minitest/spec'
require 'minitest/autorun'

class Recursion

def fib_bad(n)
  return 0 if n == 0
  return 1 if n == 1
  array = [0,1]
  (2..n).each { |i|
    puts "Adding #{array[i - 2]} + #{array[i - 1]}"
    sum = (array[i - 2] + array[i - 1])
    array << sum
    }
  array[array.length - 1]
end

def fib(n)
 return 0 if n == 0
 return 1 if n == 1
 fib(n -1) + fib(n-2)
end

end

describe "Fibonacci sequence" do
  r = Recursion.new

  it "should return 0 if n is 0" do
    (r.fib 0).must_equal 0
  end

  it "should return 55 if n is 10" do
    (r.fib 10).must_equal 55
  end
end
