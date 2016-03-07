#!/usr/bin/env ruby

# Creating a class for a fishing pole
# Will be able to bait, cast, get a bite, reel, and unhook
class FishingPole

  def initialize
    @has_bait = false
    user_prompt
  end

  def user_prompt
    puts 'What would you like to do?'
    unless @has_bait
      bait_prompt
      cast_prompt
    end

    print '> '
    input = gets.chomp
    if input.upcase.include?('BAIT')
      bait
    elsif input.upcase.include?('CAST') || input.include?('2')
      cast
    else
      puts "That's not an option"
      user_prompt
    end
  end

  def bait
    @has_bait = true
    puts "You've put a nice juicy worm on your hook"
    puts ''
    user_prompt

  end

  def cast
    puts 'casting'

  end

  def bite
    @catches = ['tire', 'algae', 'stick', 'old boot', 'rainbow trout', 'small mouth bass', 'striped bass', 'catfish', 'perch']
  end

  def reel


  end

  def unhook

  end

  def bait_prompt
    puts 'Bait the pole'
  end

  def cast_prompt
    puts 'Cast the pole'
  end

end

fishing = FishingPole.new
