# Amazing piece of code 
# Thank you - http://rosettacode.org/wiki/Sorting_algorithms/Quicksort#Ruby
# 
module Sorting
  class QuickSort
    def quicksort(array)
      return array if array.length <= 1
      pivot = array[0]
      left, right = array[1..-1].partition { |x| x < pivot }
      quicksort(left) + [pivot] + quicksort(right)
    end
  end
end
