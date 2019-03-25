# -*- muttrc -*-
# Mutt sender profile : personal/default

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


set folder = "~/.mail/"
set spoolfile = "+personal/INBOX"
set postponed="+personal/drafts"

set hostname="puddingbowl.org"
set signature= "~/.mutt/personal.sig"
set from=mph@puddingbowl.org
set realname = "Mike Hall"
set smtp_url = "smtp://pdxmph@smtp.gmail.com:587/"
set smtp_pass = `~/.mutt/ruby_get_password.rb pdxmph@gmail.com smtp.gmail.com`


# Set The status to show which profile I'm using
set status_format= "-%r-Personal: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\n"

unmy_hdr *

my_hdr From: Mike Hall <mph@puddingbowl.org>
my_hdr Organization: puddingbowl.org
my_hdr Sender: Mike Hall <mph@puddingbowl.org>
my_hdr Return-Path: <mph@puddingbowl.org>

# clear the existing mailboxes list
unmailboxes *

# load up mailboxes appropriate to this profile
set spoolfile=+"INBOX"
mailboxes + "=INBOX"
mailboxes + "=[Gmail].All Mail"
mailboxes + "=[Gmail].Drafts"
mailboxes + "=[Gmail].Sent Mail"
mailboxes + "=[Gmail].Spam"
mailboxes + "=[Gmail].Starred"
mailboxes + "=[Gmail].Trash"


# set my mailboxes appropriate to this profile
set spoolfile="+personal/INBOX"
mailboxes + "+personal/INBOX"
mailboxes + "+personal/[Gmail].All Mail"
mailboxes + "+personal/[Gmail].Drafts"
mailboxes + "+personal/[Gmail].Sent Mail"
mailboxes + "+personal/[Gmail].Spam"
mailboxes + "+personal/[Gmail].Starred"
mailboxes + "+personal/[Gmail].Trash"
set mbox      = "+personal/archive"
set postponed = "+personal/drafts"


set folder_format="%2C %N %8s %d %f"

macro index o "<shell-escape>offlineimap -a GmailPersonal -qf INBOX<enter>" "run offlineimap to sync inbox"