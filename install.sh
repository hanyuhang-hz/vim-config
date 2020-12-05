#!/bin/bash

if [ -f ~/.vimrc ];then
	echo "~/.vimrc exist!!! bak!!!"
	cp ~/.vimrc ~/.vimrc_bak
	cp ./.vimrc ~/
else
	echo "~/.vimrc not exist!!!"
	cp ./.vimrc ~/
fi

# taglist.zip
cp dir/taglist_46.zip ~/.vim
cd ~/.vim
unzip taglist_46.zip
tree ~/.vim


echo "install finished!!!"
