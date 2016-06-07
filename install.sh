#!/bin/sh

fileList=(".bashrc" ".myconf/" ".tmux.conf" ".vim/" ".xinitrc" ".zshrc")
trash="tmp/dotfilesOld"

if [ ! -f "$trash" ]
   mkdir -p "$trash"
fi

for file in "${fileList[@]}
do
    if [ -f "~/$file" ]
        mv "~/$file ~/$trash/$file"
    fi
    ln -s "~/dotfiles/$file ~/$file"
done
