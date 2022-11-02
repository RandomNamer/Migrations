# Git

## Add a SSH Key
- Generate a key: `ssh-keygen -o -t rsa -C "Comments here" -b 4096`
- Paste it `pbcopy < ~/.ssh/id_rsa.pub` into [GitHub](https://github.com/settings/keys) or GitLab distributions.
- Save passphrase to local: `ssh-add ~/.ssh/id_rsa`
### Add Key to macOS keychain
follow this [thread](https://apple.stackexchange.com/questions/48502/how-can-i-permanently-add-my-ssh-private-key-to-keychain-so-it-is-automatically)
- `ssh-add --apple-use-keychain ~/.ssh/id_rsa`
- edit ~/.ssh/config to use keychain

## Configs
- `git config --global user.name "xx"` 
- `git config --global user.email "xx@xxx.com"` 
