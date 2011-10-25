# -*- muttrc -*-
# Mutt sender profile: SMT

# get smtp settings for smt
source smtp_smt

set signature=~/.mutt/sig.smt

set from=michael@socialmediatoday.com

# set the status bar to show I'm using my smt account

set status_format= "-%r-michael@socialmediatoday.com: %f [Msgs:%?M?%M/?%m%?n? New:%n?%?o? Old:%o?%?d? Del:%d?%?F? Flag:%F?%?t? Tag:%t?%?p? Post:%p?%?b? Inc:%b?%?l? %l?]---(%s/%S)-%>-(%P)---\"\n"


unmy_hdr *

my_hdr From: Michael Hall <michael@socialmediatoday.com>
my_hdr Organization: Social Media Today, LLC
my_hdr Sender: Michael Hall <michael@socialmediatoday.com>
my_hdr Return-Path: <michael@socialmediatoday.com>

# unload all my mailboxes
unmailboxes *


# set my mailboxes appropriate to this profile
set spoolfile=+"/GMail-SMT/INBOX"
mailboxes + "=GMail-SMT/INBOX"
mailboxes + "=GMail-SMT/Acquia Support"
mailboxes + "=GMail-SMT/Notices.Site Alerts"
mailboxes + "=GMail-SMT/Notices.Site Notification Chatter"
mailboxes + "=GMail-SMT/Sent Items"
mailboxes + "=GMail-SMT/[Gmail].All Mail"
mailboxes + "=GMail-SMT/[Gmail].Drafts"
mailboxes + "=GMail-SMT/[Gmail].Sent Mail"
mailboxes + "=GMail-SMT/[Gmail].Spam"
mailboxes + "=GMail-SMT/[Gmail].Starred"
mailboxes + "=GMail-SMT/[Gmail].Trash"


