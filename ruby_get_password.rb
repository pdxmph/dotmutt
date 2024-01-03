#!/usr/bin/ruby

account = ARGV[0] # account name, e.g. pdxmph@gmail.com
server = ARGV[1] # account server, e.g. imap.gmail.com

params = {'security' => '/usr/bin/security',
          'command' => 'find-internet-password',
          'account' => account,
          'server' => server,
          'keychain' => '/Users/Mike/Library/Keychains/login.keychain'}

output = `sudo -u mike #{params['security']} 2>&1 >/dev/null -q #{params['command']} -g -a #{params['account']} -s #{params['server']} #{params['keychain']}`

print output.gsub(/password\:\ \"(.+?)\"/,"\\1")

