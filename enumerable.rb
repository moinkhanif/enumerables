# rubocop:disable Style/CaseEquality, Style/For, Lint/RedundantCopDisableDirective, Lint/MissingCopEnableDirective, Metrics/ModuleLength, Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
require_relative 'multiply_els.rb'
module Enumerable
  def my_each
    arr = self
    if block_given?
      for i in arr do
        yield i
      end
    else
      arr.to_enum(:my_each)
    end
  end

  def my_each_with_index
    arr = self
    if block_given?
      j = 0
      for i in arr do
        yield i, j
        j += 1
      end
    else
      arr.to_enum(:my_each_with_index)
    end
  end

  def my_select
    arr = self
    if block_given?
      new_arr = []
      arr.my_each do |i|
        new_arr.push(i) if yield i
      end
      new_arr
    else
      arr.to_enum(:my_select)
    end
  end

  def my_all?(all_arg = nil)
    arr = self
    value = true
    if block_given?
      arr.my_each do |i|
        value = false unless yield i
      end
    elsif all_arg.nil?
      arr.my_each { |i| value = false unless i }
    elsif all_arg.class == Class
      arr.my_each { |i| value = false unless i.class <= all_arg }
    elsif all_arg.class == Regexp
      arr.my_each { |i| value = false unless i =~ all_arg }
    else
      arr.my_each { |i| value = false unless i == all_arg && i.class <= all_arg.class }
    end
    value
  end

  def my_any?(all_arg = nil)
    arr = self
    value = false
    if block_given?
      arr.my_each do |i|
        value = true if yield i
      end
    elsif all_arg.nil?
      arr.my_each { |i| value = true if i }
    elsif all_arg.class == Class
      arr.my_each { |i| value = true if i.class <= all_arg }
    elsif all_arg.class == Regexp
      arr.my_each { |i| value = true if i =~ all_arg }
    else
      arr.my_each { |i| value = true if i == all_arg && i.class <= all_arg.class }
    end
    value
  end

  def my_none?(all_arg = nil)
    arr = self
    value = true
    if block_given?
      arr.my_each do |i|
        value = false if yield i
      end
    elsif all_arg.nil?
      arr.my_each { |i| value = false if i }
    elsif all_arg.class == Class
      arr.my_each { |i| value = false if i.class <= all_arg }
    elsif all_arg.class == Regexp
      arr.my_each { |i| value = false if i =~ all_arg }
    else
      arr.my_each { |i| value = false if i == all_arg && i.class <= all_arg.class }
    end
    value
  end

  def my_count(num = nil)
    arr = self
    count = 0
    block_count = proc { |i| count += 1 if yield i }
    block_nil = proc { |j| count += 1 if j == num }
    if block_given?
      arr.my_each(&block_count)
    else
      arr.each(&block_nil) unless num.nil?
      count = arr.length if num.nil?
    end
    count
  end

  def my_map
    if block_given?
      new_arr = []
      arr = self
      arr.my_each do |i|
        new_arr.push(yield i)
      end
      new_arr
    else
      arr.to_enum
    end
  end

  def my_inject(initial = nil, symbo = nil)
    arr = self
    if block_given? && symbo.nil?
      result = initial
      arr.my_each do |i|
        result = if result.nil?
                   i
                 else
                   yield(result, i)
                 end
      end
    else
      result = nil
      if (initial.class != Symbol && symbo.nil?) && initial.class == Integer
        warn "#{initial} is not a symbol nor a string"
        abort
      elsif initial.class == Symbol
        if initial == :+
          result = arr.my_inject { |sum, num| sum + num }
        elsif initial == :*
          result = arr.my_inject { |sum, num| sum * num }
        elsif initial == :-
          result = arr.my_inject { |sum, num| sum - num }
        elsif initial == :/
          result = arr.my_inject { |sum, num| sum / num }
        end
      elsif initial.class == Integer && symbo.class == Symbol
        arr1 = arr.to_a
        arr1.unshift(initial)
        result = arr1.my_inject(symbo)
      end
    end
    result
  end
end
