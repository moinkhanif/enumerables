require 'rspec'
require_relative '../enumerable.rb'

describe Enumerable do
  let(:input_array) { [5, 4, 3, 2, 1, 0] }
  let(:input_hash) { { monkey: 'George', lizard: 'Lizzie', wolf: 'Ralph', rhino: 'Boris', lobster: 'Ruby' } }

  describe '.my_each' do
    context 'given no block' do
      it 'returns an enumerator' do
        expect(input_array.my_each).to be_instance_of(Enumerator)
      end
    end
    context 'given an array and a block' do
      it 'executes the block for each array element' do
        expect { input_array.my_each { |x| print x } }.to output('543210').to_stdout
      end
      it 'does not overwrite input array' do
        expect(input_array.my_each { |x| x**2 }).to eql(input_array)
      end
      # it "iterates over a hash, but does not overwrite" do
      #  expect(input_hash.my_each {|key, value| value.reverse()}).to eql(input_hash)
      # end
    end
  end
end
