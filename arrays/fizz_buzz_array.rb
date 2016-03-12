#!/usr/bin/env ruby

array_of_numbers = (1..100).to_a

def fizzbuzzer(num)
  if (num % 3 == 0) && (num % 5 == 0)
    puts 'FizzBuzz'
  elsif num % 3 == 0
    puts 'Fizz'
  elsif num % 5 == 0
    puts 'Buzz'
  else
    puts num
  end
end

fizzbuzz_result = array_of_numbers.map { |i| fizzbuzzer(i) }
puts fizzbuzz_result
