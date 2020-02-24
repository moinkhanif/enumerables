module Enumerable
  def my_each
    if block_given?
      each do |i|
        yield i
      end
    else
      puts 'Please enter the block'
    end
  end

  def my_each_with_index
    if block_given?
      j = 0
      each do |i|
        yield i, j
        j += 1
      end
    else
      puts 'Please enter the block'
    end
  end

  
end

# The following are tests for available methods:
# Simply uncomment the required code to test

# my_each
#   Our method:
# [1, 3, 5].my_each { |abc| p abc }

# Each Method
#  [1, 2, 3, 4, 5, 6, 7, 8].each { |abc| p abc }

#  my_each_with_index
#   Our Method:
# [1, 3, 5].my_each_with_index { |abc, i| p "#{i} : #{abc}" }
# Each_with_index method:
# [1, 3, 5].each_with_index { |abc, i| p "#{i} : #{abc}" }
