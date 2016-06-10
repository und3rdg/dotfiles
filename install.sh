#!/bin/sh
###############################################
# Lets automate symlinkings to dotfiles.
# Old configs if exists will move to 
# .trash/oldDotfiles
# install.sh have to by run in directory 
# with dotfiles
###############################################


# LOCATION OF DOTFILES 
dot_dir=$HOME/.dotfiles

# PLACE TO PUT OLD DOTFILES
trash=$HOME/.trash/oldDotfiles


# ALL FILES FROM CURENT DIR 
file_list=(* .[^.]*)

# EXCLUDE FILE(S) THAT ARE NOT CONFIGS
exclude_list=("install.sh" "README.md" ".git" ".gitignore")

function filterFiles() {
    for file_exclude in "${exclude_list[@]}"
    do
        tmp_array=()
        for file_check in "${file_list[@]}"
        do
            if [ $file_check != $file_exclude ]
            then
                tmp_array+=($file_check)
            fi
        done
        file_list=("${tmp_array[@]}")
        unset tmp_array
    done
}


function createTrash() {
    if [ ! -f "$trash" ]
    then
        echo mkdir -pv $trash
        mkdir -pv "$trash"
    fi
}


function trashOldDots() {
    if [ -f "$HOME/$1" ]
    then
        echo mv -iv $HOME/$1 $trash/$1
        mv -iv "$HOME/$1" "$trash/$1"
    fi
}

function symlinkDots() {
    for file in ${file_list[@]}
    do
        trashOldDots $file
        echo ln -siv $dot_dir/$file $HOME/$file
        ln -siv "$dot_dir/$file" "$HOME/$file"
    done
}


filterFiles
createTrash
symlinkDots


unset -f symlinkDots
unset -f filterFiles
unset -f trashOldDots


