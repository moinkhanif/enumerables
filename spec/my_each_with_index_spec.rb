require 'rspec'
require_relative '../enumerable.rb'

describe Enumerable do
  let(:input_array) { [5, 4, 3, 2, 1, 0] }

  describe '#my_each_with_index' do
    context 'given no block' do
      it 'returns an enumerator' do
        expect(input_array.my_each_with_index).to be_instance_of(Enumerator)
      end
    end
    context 'given an array and a block' do
      it 'executes the block for each array element' do
        expect { input_array.my_each_with_index { |x, y| print x, y } }.to output('504132231405').to_stdout
      end
      it 'does not overwrite input array' do
        expect(input_array.my_each_with_index { |x, y| x**y }).to eql(input_array)
      end
    end
  end
end
