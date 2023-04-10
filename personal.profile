# -*- muttrc -*-
# Mutt sender profile : personal/default

unset folder
set spoolfile = "imaps://imap.fastmail.com"
set folder = "imaps://imap.fastmail.com/"
set postponed="+Drafts"
set hostname="puddingtime.org"
set signature= "~/.mutt/personal.sig"
set from= "Mike Hall <mike@puddingtime.org>"
set realname = "Mike Hall"
set smtp_url = "smtps://mike@puddingtime.org@smtp.fastmail.com:465"
set imap_user = "mike@puddingtime.org"

# set the status to show which profile I'm using
set status_format= "-%r-Personal: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\n"

unmy_hdr *

my_hdr From: Mike Hall <mike@puddingtime.org>
my_hdr Organization: puddingtime.org
my_hdr Sender: Mike Hall <mike@puddingtime.org>
my_hdr Return-Path: <mike@puddingtime.org>

# clear the existing mailboxes list
#unmailboxes *

# load up mailboxes appropriate to this profile
#set spoolfile=+"INBOX"
#mailboxes + "=INBOX"
mailboxes + "=Spam"
mailboxes + "=disposable"
mailboxes + "=mph@pbo"
mailboxes + "=pdxmph@gmail"
mailboxes + "=Newsletters"
mailboxes + "=Sent"
mailboxes + "=Archive"
