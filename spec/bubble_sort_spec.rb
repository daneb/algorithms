describe Sorting::BubbleSort do
  before :each do
    @some_array = [3,2,1]
    @some_other_array = [2,4,51,23,45,1,17,20]
    @bs = Sorting::BubbleSort.new
  end

  context 'sort an array of numbers' do 
    it 'should array of numbers' do
      expect(@bs.bubble_sort(@some_array)).to eq [1,2,3]
      expect(@bs.bubble_sort(@some_other_array)).to eq @some_other_array.sort
    end
  end
end
