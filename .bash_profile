# Change the bash prompt to: /dir $
export PS1="[\w] \\$ "

# Show me the files.
alias ls="ls -G"
alias lsa="ls -a -G"

# Git.
alias gs="git status"
alias gl="git log"
alias glog="git log --oneline --graph"
alias gloag="git log --oneline --all --graph"
alias gap="git add --patch"

# Super secure encrypt.
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"

# Enable pip command completion.
export PATH=$PATH:$HOME/Library/Python/2.7/bin

# Enable Google Cloud SDK command completion.
export PATH=$PATH:$HOME/bin/google-cloud-sdk/bin

# Enable NVM command completion.
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Require virtual environment for PIP installations.
export PIP_REQUIRE_VIRTUALENV=true
