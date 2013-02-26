# -*- muttrc -*-
# Mutt sender profile : puppet

unset folder
set folder = "imaps://michael.hall\@puppetlabs.com@imap.gmail.com:993"
set spoolfile = "+INBOX"
set postponed="+[Gmail]/Drafts"
set hostname="puppetlabs.com"
set signature= "~/.mutt/work.sig"
set from=michael.hall@puppetlabs.com
set realname = "Mike Hall"
set smtp_url = "smtp://michael.hall@puppetlabs.com@smtp.gmail.com:587/"

# set the status to show which profile I'm using
set status_format= "-%r-Puppet: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\n"

unmy_hdr *

my_hdr From: Michael Hall <michael.hall@puppetlabs.com>
my_hdr Organization: Puppet Labs
my_hdr Sender: Michael Hall <michael.hall@puppetlabs.com>
my_hdr Return-Path: <michael.hall@puppetlabs.com>

# unload all my mailboxes
unmailboxes *

# set my mailboxes appropriate to this profile
set spoolfile=+"INBOX"
mailboxes + "=INBOX"
mailboxes + "=[Gmail].All Mail"
mailboxes + "=[Gmail].Drafts"
mailboxes + "=[Gmail].Sent Mail"
mailboxes + "=[Gmail].Spam"
mailboxes + "=[Gmail].Starred"
mailboxes + "=[Gmail].Trash"
mailboxes + "=Puppet Users"