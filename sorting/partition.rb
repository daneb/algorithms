def partition(array, last_open, last_closed, current_index)
  temp = 0
  if current_index == array.length
    p "LC #{last_closed}"
    temp = array[last_closed]
    array[last_closed] = array.first
    array[0] = temp
    return array
  end

  if (array[current_index] < array.first)
    if (last_open > 0)
      p "SWAP #{array[last_open]}"
      temp = array[last_open]
      p "WITH: #{array[current_index]}"
      array[last_open] = array[current_index]
      array[current_index] = temp
      p array
      last_closed = last_open
      last_open = current_index
      p "LO <: #{last_open}"
      p "LC #{last_closed}"
    end
  elsif (last_open == 0)
    last_open = current_index
    p "LC #{last_closed}"
  end


  partition(array, last_open, last_closed, current_index + 1)
end
# ==> :partition

array = [ 3,1,4,1,5,9,2,6,5,3 ]
# ==> [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
partition(array,  0, 0, 0)
# ="LC 0"
# ="LC 0"
# ="SWAP 4"
# ="WITH: 1"
# =[3, 1, 1, 4, 5, 9, 2, 6, 5, 3]
# ="LO <: 3"
# ="LC 2"
# ="SWAP 4"
# ="WITH: 2"
# =[3, 1, 1, 2, 5, 9, 4, 6, 5, 3]
# ="LO <: 6"
# ="LC 3"
# ="LC 3"
# ==> [2, 1, 1, 3, 5, 9, 4, 6, 5, 3]
