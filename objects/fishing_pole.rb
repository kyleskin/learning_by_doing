#! /usr/bin/env ruby

# Fishing Pole - ability to bait, cast, reel, unhook
class FishingPole
  def initialize
    @baited = false
    @cast = false
    user_prompt
  end

  # prompt user to make a selection
  def user_prompt
    puts ''
    puts 'What would you like to do?'
    user_choices
    print '> '
    @user_selection = gets.chomp.upcase
    user_selection
  end

  # method to parse the selections made by the user
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

  # determine what choices should be displayed
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

  # bait action
  def bait
    @baited = true
    puts 'You bait your hook.'
    user_prompt
  end

  # cast action
  def cast
    @cast = true
    puts 'You cast your hook into the lake.'
    user_prompt
  end

  # reel action - if the hook was not baited, user won't reel in a fish
  def reel
    @reel = true
    puts 'You reel in your hook.'
    if @baited == false
      puts "You didn't catch anything."
    else
      puts 'You caught a lovely trout.  Good for you.'
      user_prompt
    end
  end

  # unhook action
  def unhook
    puts 'You unhook your fish.'
  end
end

FishingPole.new
