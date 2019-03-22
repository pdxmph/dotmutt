#!/usr/bin/env ruby
require 'mail'

mail = Mail.new STDIN.read
args = ARGV[0]

score_file = File.join(File.dirname(__FILE__), 'scores')
scores_file = File.read(score_file)

scoring = "score ~f#{mail.from[0]} #{args}\n"

File.write(score_file, scoring, mode: 'a')

