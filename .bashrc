# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Bash aliases
source ~/.bash_aliases
# Aliases and environment variables that contain sensitive data
source ~/.bash_sensitive

# Uncomment the following line if you don't like systemctl's auto-paging feature:
  # export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
complete -C '/usr/local/bin/aws_completer' aws


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

source ~/.bash_utils
AWS_INFO=$(get_aws_info)

# Update the PS1 variable to include AWS account ID and role name
export PS1='\u@\h:\w \[${red}\]$AWS_INFO\[${reset}\]$ '

