# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/fd/.zsh/completions:"* ]]; then export FPATH="/Users/fd/.zsh/completions:$FPATH"; fi
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

######################
# User configuration #
######################


# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# DENO
. "/Users/fd/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/fd/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# STARSHIP PROMPT
eval "$(starship init zsh)"