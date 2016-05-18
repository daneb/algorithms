module Sorting
  class QuickSort
    attr_accessor :pivot, :array, :wall

    def initialize(array)
      @wall = 0 # index in array
      @array = array
      @pivot = array[0] # assume the left-most value
    end

    def quicksort
    end

    def swap(left_index, right_index)
      @array[left_index], @array[right_index] = @array[right_index], @array[left_index]
    end

    def partition
      array.each_with_index do |element, current_index|
          next if current_index == @wall # ignore if pivot itself
          if (element < pivot and current_index > @wall)
            swap(@wall + 1, current_index) and move_wall
          end
      end
      swap(0, @wall) # drop pivot on wall
    end

    def move_wall
      @wall = @wall + 1
    end
  end
end
