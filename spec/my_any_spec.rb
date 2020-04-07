require 'rspec'
require_relative '../enumerable.rb'

describe '#my_any?' do
  it 'returns true if any elements in the array are pairs' do
    pairs = [2, 4, 6, 8, 10]
    expect(pairs.my_any?(&:even?)).to eql(true)
  end

  it "returns false when all elements in the array aren't pairs" do
    odds = [1, 3, 5, 7]
    expect(odds.my_any?(&:even?)).to eql(false)
  end

  it 'returns false for an empty array' do
    expect([].my_any?).to eql(false)
  end
  context 'given no block' do
    it 'returns true' do
      input_array = [1, 3, 5, 7]
      expect(input_array.my_any?).to eql(true)
    end
  end
end
