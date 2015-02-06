# -*- muttrc -*-
# Mutt sender profile : puppet

unset folder
unmailboxes *
set folder = ~/.mail/puppet
set spoolfile = +INBOX
mailboxes +INBOX +flagged +sent 
set postponed = +drafts

set hostname="puppetlabs.com"
set signature= "~/.mutt/work.sig"
set from=mike.hall@puppetlabs.com
set realname = "Mike Hall"
#set smtp_url = "smtp://mike.hall@puppetlabs.com@smtp.gmail.com:587/"

# set the status to show which profile I'm using
set status_format= "-%r-Puppet: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\n"

unmy_hdr *

my_hdr From: Michael Hall <mike.hall@puppetlabs.com>
my_hdr Organization: Puppet Labs
my_hdr Sender: Michael Hall <mike.hall@puppetlabs.com>
my_hdr Return-Path: <mike.hall@puppetlabs.com>

# Syncing macros 
macro index O "<shell-escape>offlineimap -a puppet -q -uquiet<enter>"           "run offlineimap to sync all mail"
macro index o "<shell-escape>offlineimap -a puppet -qf INBOX -uquiet<enter>" "run offlineimap to sync inbox"
