#!/usr/bin/env ruby

def ask_question(question)
  puts "Give me a#{question}:"
  gets.chomp
end

adjective = ask_question('n adjective')
another_adjective = ask_question('nother adjective')
noun = ask_question(' noun')
another_noun = ask_question('nother noun')
plural_noun = ask_question(' plural noun')
game = ask_question(' game')
another_plural_noun = ask_question('nother plural noun')
progressive_verb = ask_question(" verb ending in 'ing\'")
another_progressive_verb = ask_question("nother verb ending in 'ing'")
another_plural_noun_2 = ask_question('nother plural noun')
another_progressive_verb_2 = ask_question("nother verb ending in 'ing'")
another_noun_2 = ask_question('nother noun')
plant = ask_question(' plant')
body_part = ask_question(' part of the body')
place = ask_question(' place')
another_progressive_verb_3 = ask_question("nother verb ending in 'ing'")
another_adjective_2 = ask_question('nother adjective')
number = ask_question(' number')
another_plural_noun_3 = ask_question('nother plural noun')

puts 'Here is your madlib:'
puts "A vacation is when you take a trip to some #{adjective} place"
puts "with your #{another_adjective} family. Usually you go to some place"
puts "that is near a/an #{noun} or up on a/an #{another_noun}."
puts "A good vacation place is one where you can ride #{plural_noun}"
puts "or play #{game} or go hunting for #{another_plural_noun}. I like"
puts "to spend my time #{progressive_verb} or #{another_progressive_verb}."
puts 'When parents go on a vacation, they spend their time eating'
puts "three #{another_plural_noun_2} a day, and fathers play golf, and mothers"
puts "sit around #{another_progressive_verb_2}. Last summer, my little brother"
puts "fell in a/an #{another_noun_2} and got poison #{plant} all"
puts "over his #{body_part}. My family is going to go to (the)"
puts "#{place}, and I will practice #{another_progressive_verb_3}. Parents"
puts 'need vacations more than kids because parents are always very'
puts "#{another_adjective_2} and because they have to work #{number}"
puts "hours every day all year making enough #{another_plural_noun_3} to pay"
puts 'for the vacation.'

