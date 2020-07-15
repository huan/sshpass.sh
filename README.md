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
- expect - link to tcl, too heavy
- sshpass http://sourceforge.net/projects/sshpass/ - writen by C
- fd0ss http://inai.de/projects/hxtools/ - writen by C
- http://paperlined.org/apps/ssh/SSH_ASKPASS.html

## Related links
- Credit: http://andre.frimberger.de/index.php/linux/reading-ssh-password-from-stdin-the-openssh-5-6p1-compatible-way/
 > Eric Pruitt Says:   
 > Januar 20th, 2013 at 10:30  
 >> Hello, I have modified your code so that password does not have to be written to a temporary file:  

- Thanks: https://www.exratione.com/2014/08/bash-script-ssh-automation-without-a-password-prompt/
 > The technique shown here for using SSH in a script with password authentication but without a password prompt has been tested on recent versions of Ubuntu and CentOS, so should work for most Linux distributions. It uses a combination of (a) setsid to run ssh in a new session and (b) setting the SSH_ASKPASS environment variable. If SSH_ASKPASS is set to the path of a Bash script, OpenSSH will run the script and take the result as the password without a prompt - but only under somewhat contrived circumstances.

- Credit: http://www.cyberciti.biz/faq/linux-unix-tcp-port-forwarding/  
 > Connect To Remote SSH Server  
 > You can connect to the remote ssh server called server1 and use pty for communication between socat and ssh, makes it ssh's controlling tty (ctty), and makes this pty the owner of a new process group (setsid), so ssh accepts the password from socat.

```shell
$ (sleep 5; echo YOURSSHPASSWORDHERE; sleep 5; echo date; sleep 1) |socat - EXEC:'ssh -l userName server1.nixcraft.net.in',pty,setsid,ctty
```

## Todo
- find a way out to run inside OpenWRT! ( that is what I REALLY want! )

## Author

[Huan LI](https://github.com/huan) ([李卓桓](http://linkedin.com/in/zixia)), Microsoft Regional Director, zixia@zixia.net

[![Profile of Huan LI (李卓桓) on StackOverflow](https://stackexchange.com/users/flair/265499.png)](https://stackexchange.com/users/265499)

## Copyright & License

- Code & Docs © 2015-now Huan LI \<zixia@zixia.net\>
- Code released under the Apache-2.0 License
- Docs released under Creative Commons
