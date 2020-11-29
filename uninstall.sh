#!/bin/bash 

if [ -f ~/.vimrc_bak ];then
	echo "~/.vimrc_bak exist!!!"
	mv ~/.vimrc_bak ~/.vimrc
else
	echo "~/.vimrc_bak not exist!!!"
	if [ -f ~/.vimrc ];then
		echo "~/.vimrc exist!!! delete!!!"
		rm -rf ~/.vimrc
	fi
fi


echo "uninstall finished!!!"
