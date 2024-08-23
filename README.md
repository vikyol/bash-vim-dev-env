# CloudShell Development Environment

These configurations are created to be used in AWS CloudShell environment.

It is quite common to assume roles for privileged accounts from another account. 
That is why enabling these configurations will highlight the assumed role credentials in the bash prompt.

If `AWS_ACCESS_KEY_ID` environment variable is set, the configuration will update the prompt 
to display the current account name and the assumed role name.

```
cloudshell-user@ip-10-4-0-1:~/git [ACCOUNT_NAME:ROLE_NAME]$
```

Bash also sources `.bash_sensitive` file, which contains sensitive environment variables
that should not be committed to a repository.

## Usage

1. Backup your existing configuration.
1. Copy the configuration file to your home folder. 
1. Source the `.bashrc` file to apply the configurations. 

```bash
# backup your existing .bashrc file
cp ~/.bashrc ~/.bashrc.1
cp .bashrc .bash_utils .bash_aliases .vimrc ~
source ~/.bashrc
```


