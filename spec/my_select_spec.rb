require 'rspec'
require_relative '../enumerable.rb'

RSpec.describe Enumerable do
  arr = [1, 5, 4, 2, 7, 8, 9]
  describe '#my_select' do
    it 'returns the array if some cases are true' do
      my_proc = proc { |num| num < 5 }
      expect(arr.my_select(&my_proc)).to eql([1, 4, 2])
    end

    it 'returns empty array if all cases are false' do
      my_proc = proc { |num| num > 10 }
      expect(arr.my_select(&my_proc)).to eql([])
    end

    it 'returns enumerator when block not given' do
      expect(arr.my_select).to be_a(Enumerator)
    end
  end
end
