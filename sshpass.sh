#!/usr/bin/env bash
#
# sshpass.sh - use command line password with ssh
# https://github.com/huan/sshpass.sh
#
# 1st time login to your linux server?
# without the authorized_keys set, we have to input password.
# sshpass.sh let you do this by shell script, without expect, without c.
# 
# Credit: http://andre.frimberger.de/index.php/linux/reading-ssh-password-from-stdin-the-openssh-5-6p1-compatible-way/
# Thanks: https://www.exratione.com/2014/08/bash-script-ssh-automation-without-a-password-prompt/
#

if [ -n "$SSH_ASKPASS_PASSWORD" ]; then
    cat <<< "$SSH_ASKPASS_PASSWORD"
elif [ $# -lt 1 ]; then
    echo "Usage: echo password | $0 <ssh command line options>" >&2
    exit 1
else
    read SSH_ASKPASS_PASSWORD

    export SSH_ASKPASS=$0
    export SSH_ASKPASS_PASSWORD

    [ "$DISPLAY" ] || export DISPLAY=dummydisplay:0

    # use setsid to detach from tty
    exec setsid "$@" </dev/null
fi
