#!/bin/sh

file_list=( ".config/" ".myconf/" ".vim/" ".bashrc" ".bash_profile" ".gitconfig" ".tmux.conf" ".xbindkeysr" ".xinitrc" ".zprofile" ".zshrc" )

trash="~/tmp/dotfilesOld/"
home_dir="~/"
dot_dir="~/.dotfiles/"

if [ ! -f $trash ]
then
    echo "mkdir -pv" $trash
    mkdir -pv $trash
fi

for file in ${file_list[@]}
do
    if [ -f $home_dir$file ]
    then
        echo "mv -iv" $home_dir$file $trash$file
        mv -iv $home_dir$file $trash$file
    fi
    ln -siv $dot_dir$file $home_dir$file
done
