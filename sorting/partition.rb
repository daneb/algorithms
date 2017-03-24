# http://me.dt.in.th/page/Quicksort/ - visual explanation of quick sort
def partition(array, last_open, last_closed, current_index)
  temp = 0
  if current_index == array.length
    temp = array[last_closed]
    array[last_closed] = array.first
    array[0] = temp
    return array
  end

  if (array[current_index] < array.first)
    if (last_open > 0)
      temp = array[last_open]
      array[last_open] = array[current_index]
      array[current_index] = temp
      last_closed = last_open
      last_open = current_index
    end
  elsif (last_open == 0)
    last_open = current_index
  end
  
  partition(array, last_open, last_closed, current_index + 1)
end

array = [ 3,1,4,1,5,9,2,6,5,3 ]
partition(array,  0, 0, 0)
