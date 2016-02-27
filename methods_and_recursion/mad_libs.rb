#!/usr/bin/env ruby

def ask_question(question)
  puts "#{question}"
  gets.chomp
end

adjective = ask_question('Give me an adjective:')
another_adjective = ask_question('Give me another adjective:')
noun = ask_question('Give me a noun:')
another_noun = ask_question('Give me another noun:')
plural_noun = ask_question('Give me a plural noun:')
game = ask_question('Give me a game:')
another_plural_noun = ask_question('Give me another plural noun:')
progressive_verb = ask_question("Give me a verb ending in 'ing\':")
another_progressive_verb = ask_question("Give me another verb ending in 'ing':")




puts <<-TEXT
A vacation is when you take a trip to some ##### place
with your ##### family.  Usually you go to some place
that is near a/an ##### or up on a/an #####.
A good vacation place is one where you can ride #####
or play ##### or go hunting for #####.  I like
to spend my time ##### or #####.
When parents go on a vacation, they spend their time eating
three ##### a day, and fathers play golf, and mothers
sit around #####.  Last summer, my little brother
fell in a/an ##### and got poison ##### all
over his #####.  My family is going to go to (the)
#####, and I will practice #####.  Parents
need vacation more than kids because parents are always very
##### and because they have to work #####
hours every day all year making enough ##### to pay
for the vacation.
TEXT


