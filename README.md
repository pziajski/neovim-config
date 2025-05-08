# Setup with the following commands
## Prerequisites
- git
- make
- ripgrep
## Setup
```
git clone https://github.com/RoryNesbitt/pvim && git clone https://github.com/pziajski/neovim-config.git pvim/config
```
## shell specific
### sh
```
echo PATH="$(pwd)/pvim:$PATH" >> ~/.profile && . ~/.profile
```
### bash
```
echo PATH="$(pwd)/pvim:$PATH" >> ~/.bash_profile && source ~/.bash_profile
```
## Update Existing install
to pull latest config files
```
pvim -u
```
