#!/bin/bash

if [ -f ~/.vimrc ];then
	echo "~/.vimrc exist!!! bak!!!"
	cp ~/.vimrc ~/.vimrc_bak
	cp ./.vimrc ~/
else
	echo "~/.vimrc not exist!!!"
	cp ./.vimrc ~/
fi




echo "install finished!!!"

