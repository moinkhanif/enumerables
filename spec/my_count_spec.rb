require 'rspec'
require_relative '../enumerable.rb'

describe '#my_count' do
  it 'returns the number of elements in an array' do
    expect([1, 2, 3, 4, 5].my_count).to eql(5)
  end

  it 'returns the number of pair elements in an array' do
    expect([1, 2, 3, 4].my_count(&:even?)).to eql(2)
  end

  it 'returns the number of words which length is equal to 3' do
    expect(%w[do ten win great].my_count { |word| word.length == 3 }).to eql(2)
  end
end
