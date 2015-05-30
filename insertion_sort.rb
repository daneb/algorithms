require 'minitest/autorun'
require 'byebug'

class InsertionSort < Minitest::Test
  @@array = [3, 5, 7, 11, 13, 2, 9, 6]

  def test_sample_one
    result = insert(@@array, 4, 2)
    puts("@array after inserting 2:  #{result}")
    assert_equal result, [2, 3, 5, 7, 11, 13, 9, 6]
  end

  def test_sample_two
    result = insert(@@array, 5, 9)
    puts("@array after inserting 9:  #{result}")
    assert_equal result, [2, 3, 5, 7, 9, 11, 13, 6]
  end

  def test_sample_three
    result = insert(@@array, 6, 6)
    puts("@array after inserting 6:  #{result}")
    assert_equal result, [2, 3, 5, 6, 7, 9, 11, 13]
  end

  def insert(array, rightIndex, value)
    if ((value > array[rightIndex]) || (rightIndex < 0))
      return array
    end
    array[rightIndex+1] = array[rightIndex]
    array[rightIndex] = value
    insert(array, rightIndex - 1, value)
  end

end







