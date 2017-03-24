array1 = [1,2,3,4]
# ==> [1, 2, 3, 4]
array2 = [1,4,5,6]
# ==> [1, 4, 5, 6]

def merge(array1, array2)
result = []
array2.each_with_index { |x, x_index|
  if array1[x_index] < array2[x_index]
    result << array1[x_index]

}
result
end
# ==> nil

merge(array1, array2)
# ==> [1, 1, 1, 1, 1, 2, 2, 2, 1, 3, 3, 3, 1, 4, 4, 4]
