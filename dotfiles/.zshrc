#!/usr/bin/env zsh

[ -z "$PS1" ] && return
if [[ -z "$FIATLUX_PATH" ]] then
  export FIATLUX_PATH=$HOME/fiatlux
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

for file in $FIATLUX_PATH/functions/*; do
  source $file
done

for file in $FIATLUX_PATH/dotfiles/zsh/*; do
  source $file
done;
 
# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)


# Add bash completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi


# fnm
eval "$(fnm env --multi --use-on-cd)"


ssh-add -K ~/.ssh/air_lumo &> /dev/null
