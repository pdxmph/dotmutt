# -*- muttrc -*-
# Mutt sender profile : personal/default

unset folder
set folder = ~/.mail/personal
set spoolfile = +INBOX
mailboxes +INBOX +flagged +sent +To\ Ben

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
# set spoolfile=+"INBOX"

# Syncing macros 
macro index O "<shell-escape>offlineimap -a personal -q -uquiet<enter>"           "run offlineimap to sync all mail"
macro index o "<shell-escape>offlineimap -a personal -qf INBOX -uquiet<enter>" "run offlineimap to sync inbox"
