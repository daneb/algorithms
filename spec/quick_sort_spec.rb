describe Sorting::QuickSort do
  before :each do
    @array = [ 3, 1, 4, 1, 5, 9, 2, 6, 5, 3 ]
    @qs = Sorting::QuickSort.new(@array)
  end

  context 'partition' do
    it 'should select a pivot' do
      expect(@qs.pivot).to eq @array[0]
    end

    it 'should half elements less than pivot on left, and greater on right' do
      @qs.partition
      expect(@qs.array).to eq [2, 1, 1, 3, 5, 9, 4, 6, 5, 3]
    end
  end

  context 'swap' do
    it 'should be able to swap values when required' do
      array = [1,2,3,4,5]
      qs = Sorting::QuickSort.new(array)
      qs.swap(0, 1)
      expect(qs.array).to eq [2,1,3,4,5]
    end
  end
end
