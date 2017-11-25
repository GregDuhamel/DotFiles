# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# Use to not block vim Ctrl+S:
stty -ixon

# Alias gduhamel:
alias ProGo="cd ${HOME}/Project/Go/src/github.com/GregDuhamel/"
alias ProPerl="cd ${HOME}/Project/Perl/"
alias docker="sudo docker"
alias srm="srm -dDR"
