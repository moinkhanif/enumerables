require 'rspec'
require_relative '../enumerable.rb'

describe '#my_all?' do
  it 'returns true if all elements in the array are pairs' do
    pairs = [2, 4, 6, 8, 10]
    expect(pairs.my_all?(&:even?)).to eql(true)
  end

  it "returns false is all elements in the array aren't pairs" do
    odds = [1, 3, 5, 7]
    expect(odds.my_all?(&:even?)).not_to eql(true)
  end

  it 'returns true for an empty array' do
    expect([].my_all?).to eql(true)
  end
  context 'given no block' do
    it 'returns an enumerator' do
      input_array = [1, 3, 5, 7]
      expect(input_array.my_all?).to eql(true)
    end
  end
end
