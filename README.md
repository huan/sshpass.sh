# sshpass.sh
sshpass.sh is a bash shell script for ssh to accept command line password.  

the goal is to enable the automation for the very 1st time of linux server setup(maybe just save pub key to .ssh/authorized_keys).

sshpass.sh project home page - https://github.com/zixia/sshpass.sh

## Background
Yes, everyone knows we should use the private/public key pairs when we manage linux server.

But, how about the very 1st time we setup the server? the worse, how about lots of fresh servers without ssh key set?

This is why I need sshpass, and I want a simplest way to do this.

## Usage

```bash
echo "password123456" | ./sshpass.sh ssh buntu@localhost 'whoami'
ubuntu
```

## Related projects
- sshpass http://sourceforge.net/projects/sshpass/ - writen by C
- fd0ss http://inai.de/projects/hxtools/ - writen by C
- http://paperlined.org/apps/ssh/SSH_ASKPASS.html

## Related links
- Credit: http://andre.frimberger.de/index.php/linux/reading-ssh-password-from-stdin-the-openssh-5-6p1-compatible-way/
- Thanks: https://www.exratione.com/2014/08/bash-script-ssh-automation-without-a-password-prompt/

## Todo
- find a way out to run inside OpenWRT! ( that is what I REALLY want! )
