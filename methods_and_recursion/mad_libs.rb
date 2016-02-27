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

puts <<-TEXT
Here is your madlib:
A vacation is when you take a trip to some #{adjective} place
with your #{another_adjective} family.  Usually you go to some place
that is near a/an #{noun} or up on a/an #{another_noun}.
A good vacation place is one where you can ride #{plural_noun}
or play #{game} or go hunting for #{another_plural_noun}.  I like
to spend my time #{progressive_verb} or #{another_progressive_verb}.
When parents go on a vacation, they spend their time eating
three #{another_plural_noun_2} a day, and fathers play golf, and mothers
sit around #{another_progressive_verb_2}.  Last summer, my little brother
fell in a/an #{another_noun_2} and got poison #{plant} all
over his #{body_part}.  My family is going to go to (the)
#{place}, and I will practice #{another_progressive_verb_3}.  Parents
need vacation more than kids because parents are always very
#{another_adjective_2} and because they have to work #{number}
hours every day all year making enough #{another_plural_noun_3} to pay
for the vacation.
TEXT
