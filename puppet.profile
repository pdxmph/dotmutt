# -*- muttrc -*-
# Mutt sender profile : puppet

unset folder
set mbox_type = Maildir
set timeout = 3
set mail_check = 0
unset move
set delete
unset confirmappend
set quit
unset mark_old
set pipe_decode
set thorough_search


set folder = "~/.mail"
set postponed="+puppet.com/drafts"
set hostname="puppet.com"
set signature= "~/.mutt/work.sig"
set from="mike.hall@puppet.com"
set realname = "Mike Hall"
set smtp_url = "smtp://mike.hall@puppet.com@smtp.gmail.com:587/"
set smtp_pass= `~/.mutt/ruby_get_password.rb mike.hall@puppet.com smtp.gmail.com`



# set the status to show which profile I'm using
set status_format= "-%r-Puppet: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\n"

unmy_hdr *

my_hdr From: Mike Hall <mike.hall@puppet.com>
my_hdr Organization: Puppet
my_hdr Sender: Mike Hall <mike.hall@puppet.com>
my_hdr Return-Path: <mike.hall@puppet.com>

# unload all my mailboxes
unmailboxes *

# set my mailboxes appropriate to this profile
set spoolfile="+puppet.com/INBOX"
mailboxes + "+puppet.com/INBOX"
mailboxes + "+puppet.com/[Gmail].All Mail"
mailboxes + "+puppet.com/[Gmail].Drafts"
mailboxes + "+puppet.com/[Gmail].Sent Mail"
mailboxes + "+puppet.com/[Gmail].Spam"
mailboxes + "+puppet.com/[Gmail].Starred"
mailboxes + "+puppet.com/[Gmail].Trash"
set mbox      = "+puppet.com/archive"
set postponed = "+puppet.com/drafts"


set folder_format="%2C %N %8s %d %f"

# Quick check in the current account's inbox
macro index o "<shell-escape>offlineimap -a GmailPuppet -qf INBOX<enter>" "run offlineimap to sync inbox"