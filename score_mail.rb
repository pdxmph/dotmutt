#!/usr/bin/env ruby
require 'mail'

# read STDIN in binmode to flatten out messages with encoding issues, weird attachments or whatever
mail = Mail.new STDIN.binmode.read

# should be a value like "+20" or "-10"
args = ARGV[0]

# assume you keep your scores file in the same directory as this script and call it `scores`
score_file = File.join(File.dirname(__FILE__), 'scores')
scores_file = File.read(score_file)

# Make a string we'll append to the score file
scoring = "score ~f#{mail.from[0]} #{args}\n"

File.write(score_file, scoring, mode: 'a')

# How to use: 
# This is meant to be used with mutt macros. Here's an example of some macros that will add 10 or 20 points, or remove 20 points from a message's sender:
# macro index,pager .s10 "<pipe-entry>~/.mutt/scoremail.rb +10<enter>" # score sender +10
# macro index,pager .s20 "<pipe-entry>~/.mutt/scoremail.rb +10<enter>" # score sender +20
# macro index,pager .sk "<pipe-entry>~/.mutt/scoremail.rb -20<enter>" # score sender -20
# You could remove the auto-enter to make a version where you have to type a score and press enter, too. 
