#!/bin/bash

if [[ -z $STOW_FOLDERS ]]; then STOW_FOLDERS="bash,vim,tmux,git"; fi
if [[ -z $DOTFILES ]]; then DOTFILES=$HOME/.magellan; fi

pushd $DOTFILES

for directory in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "Stow $directory"
    stow -D $directory
    stow $directory
done

popd

