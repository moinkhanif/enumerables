# rubocop:disable Style/CaseEquality, Style/For, Lint/RedundantCopDisableDirective, Lint/MissingCopEnableDirective
module Enumerable
  def my_each
    if block_given?
      for i in self do
        yield i
      end
    else
      puts 'Please enter the block'
    end
  end

  def my_each_with_index
    if block_given?
      j = 0
      for i in self do
        yield i, j
        j += 1
      end
    else
      puts 'Please enter the block'
    end
  end

  def my_select
    if block_given?
      new_arr = []
      arr = self
      arr.my_each do |i|
        puts yield i
      end
      new_arr
    else
      puts 'Please enter the block'
    end
  end

  def my_all?
    if block_given?
      value = nil
      arr = self
      arr.my_each do |i|
        value = true if yield i
      end
      value
    else
      puts 'Please enter the block'
    end
  end
end

# my_array = [1, 2, 3, 4, 5, 6, 7, 8]

# The following are tests for available methods:
# Simply uncomment the required code to test

# my_each
#   Our method:
# my_array.my_each { |abc| p abc }

# Each Method
#  my_array.each { |abc| p abc }

#  my_each_with_index
#   Our Method:
# my_array.my_each_with_index { |abc, i| p "#{i} : #{abc}" }
# Each_with_index method:
# my_array.each_with_index { |abc, i| p "#{i} : #{abc}" }

#  my_select
#   Our Method:
# my_array.my_select(&:even?)
# select method:
# my_array.select(&:even?)

#  my_all?
#   Our Method:
# my_array.my_all? { |po| po == 2 }
# all? method:
# my_array.all? { |po| po == 2 }
