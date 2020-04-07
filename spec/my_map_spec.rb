require 'rspec'
require_relative '../enumerable.rb'

describe '#my_map' do
  it 'returns true for all even numbers and false otherwise' do
    expect([2, 1].my_map(&:even?)).to eql([true, false])
  end

  it 'returns true for every element that is a string' do
    expect(['a', 2, 'c'].my_map { |x| x.is_a? String }).to eql([true, false, true])
  end

  it 'returns true for each element that is not an integer' do
    expect([true, 1, 'a'].my_map { |x| x.is_a? Integer }).to eql([false, true, false])
  end
end
