#!/usr/bin/env ruby
require 'mail'
require 'uri'

mail = Mail.new STDIN.binmode.read
subject = URI.escape(mail.subject.to_s)
url = URI.escape("mutt:#{mail.message_id}")
body = URI.escape(mail.body.to_s)

mail.parts.each do |p|
  
  if p.content_type.match?(/^text\/plain/)
    @body =  URI.escape(p.body.raw_source)
  end
    
end


`/usr/local/bin/emacsclient -c -n "org-protocol:/capture\?template=m\&url=#{url}&title=#{subject}"`

osascript -e 'tell application \"Emacs\" to activate'`
