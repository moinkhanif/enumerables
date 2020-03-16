def multiply_els(arr_multiply)
  arr_multiply.my_inject { |multi, num| multi * num }
end
