#!/usr/bin/env zsh

if [[ -z "$FIATLUX_PATH" ]] then
  export FIATLUX_PATH=$HOME/fiatlux
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

unsetopt CORRECT
unsetopt SHARE_HISTORY

for file in $FIATLUX_PATH/functions/*; do
  source $file
done
