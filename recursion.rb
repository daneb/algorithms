require 'minitest/spec'
require 'minitest/autorun'

# Recursion is most commonly defined as “a process wherein a method can call themselves until they reach a goal.”
#
# We say that a method is “recursive” if it
#
# Has an end goal, or base case
# Uses a process in which the task at hand is reduced towards that end goal

# Divide and Conquer
# Recursion is useful as a way to divide a large problem into a smaller one. The most common way to explain recursion is to use it to calculate the factorial of # a number. A factorial is the product of all positive integers less than or equal to the number. Therefor, the factorial of 5 is equal to 12345.

# Best for Divide and Conquer Type situations

def factorial(n)
  return 1 if n == 0             # your BASE CASE
  result = n * factorial(n - 1)  # actual PROCESSING
end

## Visual of Problem:
## This is why it's DIVIDE and CONQUER
## It's breaking down the problem into smaller chunks of work
# factorial(5)
#  5 * factorial(4)
#    4 * factorial(3)
#      3 * factorial(2)
#        2 * factorial(1)

# Another Visual
# factorial(5)
#  5 * 24
#    4 * 6
#      3 * 2
#        2 * 1

describe 'Factorial Tests' do
  it "should return 120 for 5 factorial" do
    factorial(5).must_equal 120
  end

  it "should return 6227020800 for 13 factorial" do
    factorial(13).must_equal 6227020800
  end
end





