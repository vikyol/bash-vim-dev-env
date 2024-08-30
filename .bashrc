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
[[ -f "$HOME/.bash_aliases" ]] && source ~/.bash_aliases
# Aliases and environment variables that contain sensitive data
[[ -f "$HOME/.bash_sensitive" ]] && source ~/.bash_sensitive


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

[[ -f "$HOME/.bash_utils" ]] && source ~/.bash_utils
AWS_INFO=$(get_aws_info)

# Update the PS1 variable to include AWS INFO
export PS1='\u@\h:\[${red}\]$AWS_INFO\[${reset}\]\w$ '

# Save command history
export PROMPT_COMMAND='history -a'
