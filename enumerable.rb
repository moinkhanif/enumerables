module Enumerable
  def my_each
    if block_given?
      for i in self
        yield i
      end
    else
      puts 'Please enter the block'
    end
  end
end

# Our method:
# [1, 3, 5].my_each { |abc| p abc }

# Each Method
# [1, 2, 3, 4, 5, 6, 7, 8].each { |abc| p abc }
