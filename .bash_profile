# Change the bash prompt to: [24h Time] ~/dir $
export PS1="[\A] \w \\$ "

# Show me the colours.
export CLICOLOR=1

# Show me the files.
alias lsa='ls -la'

# Bat rules.
alias cat='bat'

# Enable Google Cloud SDK command completion.
export PATH=$PATH:$HOME/bin/google-cloud-sdk/bin:$HOME/bin/google-cloud-sdk/platform/google_appengine

# Enable NVM command completion.
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
