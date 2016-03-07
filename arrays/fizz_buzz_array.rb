#!/usr/bin/env ruby

numbers = (1..100).to_a

def fizzbuzz(num)
  string = ''
  if num % 3 == 0
    string += 'Fizz'
    if num % 5 == 0
      string += 'Buzz'
    end
  else
    string += num
  end
end

numbers.map{ |x| x.fizzbuzz }

# numbers.each {|num|
#   if (num % 3 == 0) && (num % 5 == 0)
#     puts 'FizzBuzz'
#   elsif num % 3 == 0
#     puts 'Fizz'
#   elsif num % 5 == 0
#     puts 'Buzz'
#   else
#     puts num
#   end
# }
