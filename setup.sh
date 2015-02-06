#!/bin/sh

path=$(pwd)

for f in .bashrc .gitconfig git-completion.bash .vimrc; do
  if [ -e ~/$f ] ; then
    mv ~/$f ~/$f.bak
  fi
  ln -s $path/$f ~/$f
done

