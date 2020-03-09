# Enumerables

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

## About the project

This was a Solo project which aimed at building an Enumerable module with the given list of methods. Instructions for this project and be found [here](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks/). We extended the default Enumerable module to include our own methods.

## Features

We included our own methods in the extended Enumerable module:

*  #my_each
*  #my_each_with_index
*  #my_select
*  #my_all?
*  #my_any?
*  #my_none?
*  #my_count
*  #my_map
*  #my_inject

## Technologies Used

* Ruby

## Outputs

Users can uncomment the code present in the file to get their desired output

```
# my_array = [7, 2, 3, 4, 5, 6, 7, 8]

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

#  my_map
#   Our Method:
# p my_array.my_map { |li| li*4 }
# map method:
# p my_array.map { |li| li*4 }

#  my_inject
#   Our Method:
# p my_array.my_inject(5) { |sum, num| sum * num }
# inject method:
# p my_array.inject(5) { |sum, num| sum * num }

#  multiply_els
#   Our Method:
# p multiply_els(my_array)

#  my_map with proc or block
# test_proc = proc { |n| n * 7 }
#   Our Method:
# p my_array.my_map(&test_proc)
# map method:
# p my_array.map(&test_proc)
```


## Contributors

* Moin Khan
    * Twitter: [@MoinKhanIF](https://twitter.com/MoinKhanIF)
    * LinkedIn : [@MoinKhanIF](https://www.linkedin.com/in/moinkhanif/)
    * Personal Website: [MoinKhan.Info](https://moinkhan.info)

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/moinkhanif/enumerables.svg?style=flat-square
[contributors-url]: https://github.com/moinkhanif/enumerables/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/moinkhanif/enumerables.svg?style=flat-square
[forks-url]: https://github.com/moinkhanif/enumerables/network/members
[stars-shield]: https://img.shields.io/github/stars/moinkhanif/enumerables.svg?style=flat-square
[stars-url]: https://github.com/moinkhanif/enumerables/stargazers
[issues-shield]: https://img.shields.io/github/issues/moinkhanif/enumerables.svg?style=flat-square
[issues-url]: https://github.com/moinkhanif/enumerables/issues
