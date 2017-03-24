def quicksort(array)
  return array if array.length <= 1
  pivot = array[array.length - 1]
  left, right = array[0..-2].partition { |x| x < pivot } # partition without pivot
  quicksort(left) + [pivot] + quicksort(right)
end
# ==> :quicksort

array = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
# ==> [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
quicksort(array)
# ==> [1, 1, 2, 3, 3, 4, 5, 5, 6, 9]
