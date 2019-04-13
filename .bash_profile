# Change the bash prompt to: /dir $
export PS1="[\w] \\$ "

# Show me the files.
alias ls='ls -G'
alias lsa='ls -la'

# Enable Google Cloud SDK command completion.
export PATH=$PATH:$HOME/bin/google-cloud-sdk/bin

# Enable NVM command completion.
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Require virtual environment for PIP installations
export PIP_REQUIRE_VIRTUALENV=true
