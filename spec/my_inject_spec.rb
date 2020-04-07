require 'rspec'
require_relative '../enumerable.rb'

RSpec.describe Enumerable do
  context 'when block given' do
    describe '#my_inject' do
      it 'returns word with heighest length' do
        my_proc = proc { |memo, word| memo.length > word.length ? memo : word }
        expect(%w[cat sheep bear].my_inject(&my_proc)).to eql('sheep')
      end

      it 'returns product of all elements' do
        expect((5..10).my_inject(:*)).to eql(151_200)
      end
    end
  end

  context 'when block not given' do
    it 'returns false' do
      expect((1..10).my_inject).to eql(nil)
    end
  end
end
