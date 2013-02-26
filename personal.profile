# -*- muttrc -*-
# Mutt sender profile : personal/default

unset folder
set folder = "imaps://pdxmph@imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed="+[Gmail]/Drafts"
set hostname="puddingbowl.org"
set signature= "~/.mutt/personal.sig"
set from=mph@puddingbowl.org
set realname = "Mike Hall"
set smtp_url = "smtp://pdxmph@smtp.gmail.com:587/"

# set the status to show which profile I'm using
set status_format= "-%r-Personal: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\n"

unmy_hdr *

my_hdr From: Michael Hall <mph@puddingbowl.org>
my_hdr Organization: puddingbowl.org
my_hdr Sender: Michael Hall <mph@puddingbowl.org>
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