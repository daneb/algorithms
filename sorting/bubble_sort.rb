
# Start         3 0 1 8 7 2 5 4 6 9
# Iteration 1   0 1 3 7 2 5 4 6 8 9
# Iteration 2   0 1 3 2 5 4 6 7 8 9
# Iteration 3   0 1 2 3 4 5 6 7 8 9

# Perhaps one of the best implementations I've seen in ruby, so
# borrowed directly from here [Christopher Fox]
#  https://w3.cs.jmu.edu/spragunr/CS240_F12/ConciseNotes.pdf
module Sorting
  class BubbleSort
    def bubble_sort(array)
      (array.size - 1).downto(1).each do |k|
        1.upto(k).each do |n|
          if array[n] < array[n - 1]
            array[n], array[n - 1] = array[n - 1], array[n]
          end
        end
      end
      array
    end
  end
end
