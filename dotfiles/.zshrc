#!/usr/bin/env zsh

[ -z "$PS1" ] && return
if [[ -z "$FIATLUX_PATH" ]] then
  export FIATLUX_PATH=$HOME/fiatlux
fi

for file in $FIATLUX_PATH/dotfiles/zsh/*; do
  source $file
done;


# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

# search history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# # Add bash completion
# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
# fi


# fnm
eval "$(fnm env --multi --use-on-cd)"


ssh-add -K ~/.ssh/air_lumo &> /dev/null
