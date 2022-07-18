require_relative '../app/bubble_sort'

describe 'Bubble sort project' do
  it 'returns a sorted array' do
    input_array = [4, 3, 78, 2, 0, 2]

    result = bubble_sort(input_array)

    expect(result).to eq([0, 2, 2, 3, 4, 78])
  end

  it 'returns a sorted array that contains negative elements' do
    input_array = [256, 44, -69, 8, 0, -22, 0,
                   1, 5, 2, 10, 99, -65, 25, 40,
                   25, 25, 26, -69, -111, 85, 124,
                   25, 10, -1, -76, -1025, 765]

    result = bubble_sort(input_array)

    expect(result).to eq(input_array.sort)
  end

  context 'returns the input array' do
    it 'if its elements are all the same' do
      input_array = [13, 13, 13, 13, 13, 13, 13, 13, 13]
  
      result = bubble_sort(input_array)
  
      expect(result).to eq(input_array)
    end

    it 'if it only contains 1 (one) element' do
      input_array = [5]

      result = bubble_sort(input_array)

      expect(result).to eq(input_array)
    end
  end

end