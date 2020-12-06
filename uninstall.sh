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

# taglist_46.zip
if [ -f ~/.vim/taglist_46.zip ];then
	rm -rf ~/.vim/taglist_46.zip
fi

# bufexplorer-7.4.21.zip 
if [ -f ~/.vim/bufexplorer-7.4.21.zip ];then
	rm -rf ~/.vim/bufexplorer-7.4.21.zip
fi

# winmanager.zip
if [ -f ~/.vim/winmanager.zip ];then
	rm -rf ~/.vim/winmanager.zip
fi


if [ -d ~/.vim/doc ];then
	rm -rf ~/.vim/doc
fi
if [ -d ~/.vim/plugin ];then
	rm -rf ~/.vim/plugin
fi


echo " "
echo "tree ~/.vim:"
tree ~/.vim

echo "uninstall finished!!!"
