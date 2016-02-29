#! /usr/bin/env ruby

seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_week = 7
weeks_in_year = 52
seconds_in_day = seconds_in_minute * minutes_in_hour * hours_in_day
age_one = 20
age_two = 100

# ages based off of weeks in a year, not days in a year
seconds_in_age_one = seconds_in_day * days_in_week * weeks_in_year * age_one
seconds_in_age_two = seconds_in_day * days_in_week * weeks_in_year * age_two


puts "There are #{seconds_in_minute} seconds in a minute"
puts "There are #{minutes_in_hour} minutes in an hour"
puts "There are #{hours_in_day} hours in a day"
puts "There are #{days_in_week} days in a week"
puts <<-TEXT
That means there are:
  #{seconds_in_minute * minutes_in_hour} seconds in an hour,
  #{seconds_in_minute * minutes_in_hour * hours_in_day} seconds in a day,
  #{seconds_in_minute * minutes_in_hour * hours_in_day * days_in_week} seconds in a week
That means when you turn #{age_one}, you've been alive for #{seconds_in_age_one.to_i} seconds,
and if you make it to #{age_two}, you will have lived #{seconds_in_age_two} seconds.  Make them
count!
TEXT

