#!/usr/bin/ruby

account = ARGV[0] # account name, e.g. pdxmph@gmail.com
server = ARGV[1] # account server, e.g. imap.gmail.com
user = `whoami`.strip!
keychain_path = "#{ENV['HOME']}/Library/Keychains/login.keychain"

params = {'security' => '/usr/bin/security',
          'command' => 'find-internet-password',
          'account' => account,
          'server' => server,
          'keychain' => keychain_path}

output = `sudo -u mikehall #{params['security']} 2>&1 >/dev/null -q #{params['command']} -g -a #{params['account']} -s #{params['server']} #{params['keychain']}`

puts output.gsub(/^password:\ "(.+?)"/,"\\1")


