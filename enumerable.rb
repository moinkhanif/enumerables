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
      value = true
      arr = self
      arr.my_each do |i|
        value = false unless yield i
      end
      value
    else
      puts 'Please enter the block'
    end
  end

  def my_any?
    if block_given?
      value = false
      arr = self
      arr.my_each do |i|
        value = true if yield i
      end
      value
    else
      puts 'Please enter the block'
    end
  end

  def my_none?
    if block_given?
      value = false
      arr = self
      arr.my_each do |i|
        value = true unless yield i
      end
      value
    else
      puts 'Please enter the block'
    end
  end

  def my_count(num = nil)
    arr = self
    count = 0
    block_count = proc { |i| count += 1 if yield i }
    block_nil = proc { |j| count += 1 if j == num }
    if block_given?
      # arr = self
      # count = 0
      arr.my_each(&block_count)
    else
      # arr = self
      # count = 0
      arr.each(&block_nil) unless num.nil?
      count = arr.length if num.nil?
    end
    count
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
# p %w[ant bear cat].my_all? { |word| word.length >= 4 }
# all? method:
# p %w[ant bear cat].all? { |word| word.length >= 4 }

#  my_any?
#   Our Method:
# p %w[ant bear cat].my_any? { |word| word.length >= 4 }
# any? method:
# p %w[ant bear cat].any? { |word| word.length >= 4 }

#  my_none?
#   Our Method:
# p %w{ant bear cat}.my_none? { |word| word.length >= 9 }
# none? method:
# p %w{ant bear cat}.none? { |word| word.length >= 9 }

#  my_count
#   Our Method:
# p my_array.my_count
# count method:
# p my_array.count
