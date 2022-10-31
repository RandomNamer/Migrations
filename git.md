# Git

## Add a SSH Key
- Generate a key: `ssh-keygen -o -t rsa -C "Comments here" -b 4096`
- Paste it `pbcopy < ~/.ssh/id_rsa.pub` into [GitHub](https://github.com/settings/keys) or GitLab distributions.
- Save passphrase to local: `ssh-add ~/.ssh/id_rsa`

## Configs
- `git config --global user.name "xx"` 
- `git config --global user.email "xx@xxx.com"` 
