require 'rspec'
require_relative '../enumerable.rb'

describe '#my_none?' do
  it 'returns true if none of the elements in an array are pair' do
    expect([1, 3, 5].my_none?(&:even?)).to eql(true)
  end

  it 'returns false if an element from an array is pair' do
    expect([1, 2, 3, 5].my_none?(&:even?)).to eql(false)
  end

  it 'returns true if an array is empty' do
    expect([].my_none?).to eql(true)
  end
end
