def swap(array, firstIndex, secondIndex)
  temp = array[secondIndex]
  array[secondIndex] = array[firstIndex]
  array[firstIndex] = temp
end

testArray = [7, 9, 4]
swap(testArray, 0, 1)

puts testArray
