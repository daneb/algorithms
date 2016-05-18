# Amazing piece of code, tweaked a little
# Thank you - http://rosettacode.org/wiki/Sorting_algorithms/Quicksort#Ruby
# 
module Sorting
  class QuickSort
    def quicksort(array)
      byebug
      return array if array.length <= 1
      pivot = array[array.length - 1]
      left, right = array[0..-2].partition { |x| x < pivot }
      quicksort(left) + [pivot] + quicksort(right)
    end
  end
end
