#! /usr/bin/env ruby

# Fishing Pole - ability to bait, cast, reel, unhook
class FishingPole

  def initialize
    @baited = false
    @cast = false
    user_prompt
  end

  def user_prompt
    puts 'What would you like to do?'
    user_choices
    print '> '
    @user_selection = gets.chomp.upcase
    user_selection
  end

  def user_selection
    case @user_selection
      when 'B'
        bait
      when 'C'
        cast
      when 'R'
        reel
      when 'U'
        unhook
    end


  end

  def user_choices
    unless @baited
      puts '(B)ait hook?'
    end

    unless @cast
      puts '(C)ast?'
    end
  end


  def bait
    @bait = true
    puts 'You bait your hook.'
  end

  def cast
    @cast = true
    puts 'You cast your hook into the lake.'
  end

  def reel
    puts 'You reel in your hook.'
  end

  def unhook
    puts 'You unhook your fish.'
  end

end

pole = FishingPole.new
