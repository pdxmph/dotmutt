#!/usr/bin/env ruby

require 'mail'
require 'tempfile'

# Wants a +/- integer, e.g. +20
score = ARGV.first

score_file = "/Users/mph/.mutt/scored"

msg = Tempfile.new('msg')

msg.write($stdin.read)

mail = Mail.read(msg)

from = mail.from.first

File.open(score_file, "a") { |f| f.write "score ~f#{from} #{score}\n"}

msg.close

msg.unlink
