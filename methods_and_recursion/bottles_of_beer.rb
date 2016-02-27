#!/usr/bin/env ruby

def bottles_of_beer(number)

  if number >= 3
    puts "#{number.to_s} bottles of beer on the wall, #{number.to_s} bottles of beer."
    puts "Take one down, pass it around, #{((number) - 1)} bottles of beer on the wall."
    puts ''
  elsif number == 2
    puts "#{number.to_s} bottles of beer on the wall, #{number.to_s} bottles of beer."
    puts "Take one down, pass it around, #{((number) - 1)} bottle of beer on the wall."
    puts ''
  elsif number == 1
    puts "#{number.to_s} bottle of beer on the wall, #{number.to_s} bottle of beer."
    puts "Take one down, pass it around, no more bottles of beer on the wall."
    puts ''
  else
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
  end
  if number > 0
    bottles_of_beer(number - 1)
  end
end

bottles_of_beer(99)
