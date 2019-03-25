#!/usr/bin/env ruby
require 'mail'
require 'uri'

mail = Mail.new STDIN.binmode.read
subject = URI.escape(mail.subject.to_s)
url = URI.escape("mutt:#{mail.message_id}")

`/usr/local/bin/emacsclient -c -n "org-protocol:/capture\?template=m\&url=#{url}&title=#{subject}"`

`osascript -e 'tell application "Emacs" to activate'`
