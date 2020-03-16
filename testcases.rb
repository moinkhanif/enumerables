require_relative 'enumerable.rb'

my_array = [7, 2, 3, 4, 5, 6, 7, 8]

# The following are tests for available methods:
# Simply uncomment the required code to test
# my_each
#   Our method:
my_array.my_each { |abc| p abc }

# Each Method
#  my_array.each { |abc| p abc }
# yay = {"spike" => "my", "yolo"  => "life"}

# for i in yay do
#   puts i
# end
# puts "hello"

#  my_each_with_index
#   Our Method:
# my_array.my_each_with_index { |abc, i| p "#{i} : #{abc}" }
# Each_with_index method:
# my_array.each_with_index { |abc, i| p "#{i} : #{abc}" }
# p my_array.my_each_with_index
# p my_array.my_each

#  my_select
#   Our Method:
# my_array.my_select(&:even?)
# select method:
# my_array.select(&:even?)
# p my_array.my_select

#  my_all?
#   Our Method:
# p %w[ant bear cat].my_all? { |word| word.length >= 4 }
# all? method:
# p %w[ant bear cat].all? { |word| word.length >= 4 }
# p my_array.my_all?
# p [1, true, 'hi', []].my_all?
# p Integer.class
# p [1,2,1].my_all?(Integer)
# p [3,3,3,3].my_all?(4)
# p true.class
# p [1, 2i, 3.14].my_all?(Numeric)
# p [1, 2i, 3.14].all?(Numeric)

#  my_any?
#   Our Method:
# p %w[ant bear cat].my_any? { |word| word.length >= 4 }
# any? method:
# p %w[ant bear cat].any? { |word| word.length >= 4 }
# p ['cat',2,32,].my_any?('cat')

#  my_none?
#   Our Method:
# p %w{ant bear cat}.my_none? { |word| word.length >= 9 }
# none? method:
# p %w{ant bear cat}.none? { |word| word.length >= 9 }
# p ['hello','milk','milo'].my_none?(/z/)

#  my_count
#   Our Method:
# p my_array.my_count
# count method:
# p my_array.count

#  my_map
#   Our Method:
# p my_array.my_map { |li| li*4 }
# map method:
# p my_array.map { |li| li*4 }

#  my_inject
#   Our Method:
# p my_array.my_inject(10) { |sum, num| sum * num }
# inject method:
# p my_array.inject(2,2,:*) { |sum, num| sum * num }

#  multiply_els
#   Our Method:
# p multiply_els(my_array)

#  my_map with proc and/or block
# test_proc = proc { |n| n * 7 }
#   Our Method:
# p my_array.my_map(&test_proc)
# p my_array.my_map(&test_proc).my_map { |li| li*4 }
# map method:
# p my_array.map(&test_proc)
# p my_array.map(&test_proc).map { |li| li*4 }
# p [1, 9, 8, 7, 5, 6].inject(:*)
# p (5..10).my_inject(5)
# p (5..10).inject(2,:*) {|sum,mum|
#   puts "sum #{sum.class}"
#   puts "num #{mum}"
#   sum * mum}
# p (5..10).inject(2)
# p (5..10).my_inject(2)
# {|sum, num| sum + num}
# p (5..10).inject(2, :*)
# p (5..10).inject("2")
# p (5..10).inject(:+)
# raise TypeError.new "This is an exception"
# print :* * 5
