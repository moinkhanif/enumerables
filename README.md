# Enumerables

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

## About the project

This was a Solo project which aimed at building an Enumerable module with the given list of methods. Instructions for this project and be found [here](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks/). We extended the default Enumerable module to include our own methods.

## Features

We included our own methods in the extended Enumerable module:

* #my_each
* #my_each_with_index
* #my_select
* #my_all?
* #my_any?
* #my_none?
* #my_count
* #my_map - able to take in proc and/or a block
* #my_inject
* #multiply_els to test #my_inject

## Technologies Used

* Ruby

## Testing

Testing was a collaborative effort by me(Moin) and [Samuel](https://github.com/Samkiroko).

The tests for individual Enumerable methods can be found in the `spec` folder.
(Note: please make sure that you have installed rspec to proceed with testing.)

To run individual tests use the following command:

```ruby
rspec spec/my_all_spec.rb
```

in this case I used my_all_spec.rb file as an example.

To check all available test cases in the spec folder:

```ruby
rspec
```

## Outputs

A few sample outputs are given below(lets use given array in each case):

```ruby
my_array = [7, 2, 3, 4, 5, 6, 7, 8]
```

* my_each

```ruby
my_array.my_each { |abc| print abc }

output ==> 72345678
```

* my_each_with_index

```ruby
my_array.my_each_with_index { |abc, i| p "#{i} : #{abc}" }
output ==>
"0 : 7"
"1 : 2"
"2 : 3"
"3 : 4"
"4 : 5"
"5 : 6"
"6 : 7"
"7 : 8"
```

* multiply_els - A method to reduce an array using `my_inject(:*)`

```ruby
p multiply_els(my_array)
output ==> 282240
```

Feel free to try the any methods on `enumerable.rb` file 😄

## Test Output

* For individual tests: (Please note that we have used --format documentation in the .rspec file for clear descriptions of passing/failing tests)

```ruby
$ rspec spec/my_all_spec.rb

#my_all?
  returns true if all elements in the array are true
  returns false is all elements in the array aren't true
  returns true for an empty array
  given no block
    returns an enumerator

Finished in 0.00457 seconds (files took 0.23044 seconds to load)
4 examples, 0 failures
```

* For all test cases:

```ruby
$ rspec

#my_all?
  returns true if all elements in the array are true
  returns false is all elements in the array aren't true
  returns true for an empty array
  given no block
    returns an enumerator

#my_any?
  returns true if any elements in the array are true
  returns false when all elements in the array aren't true
  returns false for an empty array
  given no block
    returns true

#my_count
  returns the number of elements in an array
  returns the number of pair elements in an array
  returns the number of words which length is equal to 3
  returns the number of same elements in an array

Enumerable
  .my_each
    given no block
      returns an enumerator
    given an array and a block
      executes the block for each array element
      does not overwrite input array

Enumerable
  #my_each_with_index
    given no block
      returns an enumerator
    given an array and a block
      executes the block for each array element
      does not overwrite input array

Enumerable
  when block given
    #my_inject
      returns word with heighest length
      returns product of all elements
  when block not given
    returns false

#my_map
  returns true for all even numbers and false otherwise
  returns true for every element that is a string
  returns true for each element that is not an integer

#my_none?
  returns true if none of the elements in an array are pair
  returns false if an element from an array is pair
  returns true if an array is empty

Enumerable
  #my_select
    returns the array if some cases are true
    returns empty array if all cases are false
    returns enumerator when block not given

Finished in 0.02244 seconds (files took 0.2372 seconds to load)
30 examples, 0 failures
```

## Contributors

* Moin Khan
  * Twitter: [@MoinKhanIF](https://twitter.com/MoinKhanIF)
  * LinkedIn : [@MoinKhanIF](https://www.linkedin.com/in/moinkhanif/)
  * Personal Website: [MoinKhan.Info](https://moinkhan.info)

* Samuel Kiroko N - Collaborated with Testing with RSpec
  * Twitter: [@kirokonjenga](https://twitter.com/kirokonjenga)
  * LinkedIn: [@samuel-kiroko](https://www.linkedin.com/in/samuel-kiroko/)
  * Personal Website: [kiroko.tech](https://www.kiroko.tech/)

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/moinkhanif/enumerables.svg?style=flat-square
[contributors-url]: https://github.com/moinkhanif/enumerables/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/moinkhanif/enumerables.svg?style=flat-square
[forks-url]: https://github.com/moinkhanif/enumerables/network/members
[stars-shield]: https://img.shields.io/github/stars/moinkhanif/enumerables.svg?style=flat-square
[stars-url]: https://github.com/moinkhanif/enumerables/stargazers
[issues-shield]: https://img.shields.io/github/issues/moinkhanif/enumerables.svg?style=flat-square
[issues-url]: https://github.com/moinkhanif/enumerables/issues
