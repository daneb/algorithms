require 'minitest/autorun'
# The russian doll is a great example of recursion.
# Divide and conquer
# 5! = 5.4!
# 4! = 4.3!
# Recursion mostly has two parts (1) base case [condition] (2) recursive case

class KhanAcademy < MiniTest::Test
  def factorial(n)
    # base case
    if(n == 0)
      return 1
    end

    # Notation = n * (n - 1)
    # recursive case
    return n * factorial(n-1)

  end

  def test_base_case
    assert_equal factorial(0), 1
  end

  def test_recursive
    assert_equal factorial(5), 120
  end

end

