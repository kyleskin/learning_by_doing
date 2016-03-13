#! /usr/bin/env ruby

# Fishing Pole - ability to bait, cast, reel, unhook
class FishingPole

  def initialize
    @baited = false
    @cast = false
    user_prompt
  end

  def user_prompt
    puts ''
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
      else
        puts 'Please make another selection.'
        user_prompt
    end


  end

  def user_choices
    if @reel
      puts '(U)nhook'
    elsif @cast
      puts '(R)eel'
    elsif @baited
      puts '(C)ast'
    elsif @baited == false
      puts '(B)ait hook?'
      puts '(C)ast?'
    else
      puts 'Try another selection'
      user_prompt
    end
  end


  def bait
    @baited = true
    puts 'You bait your hook.'
    user_prompt
  end

  def cast
    @cast = true
    puts 'You cast your hook into the lake.'
    user_prompt
  end

  def reel
    @reel = true
    puts 'You reel in your hook.'
    unless @baited
      puts "You didn't catch anything."
    else
      puts 'You caught a lovely trout.  Good for you.'
      user_prompt
    end
  end

  def unhook
    puts 'You unhook your fish.'
  end

end

pole = FishingPole.new
