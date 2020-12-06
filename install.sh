#!/bin/bash

CUR_DIR=`pwd`
echo "CUR_DIR:${CUR_DIR}"

if [ -f ~/.vimrc ];then
	echo "~/.vimrc exist!!! bak!!!"
	cp ~/.vimrc ~/.vimrc_bak
	cp ./.vimrc ~/
else
	echo "~/.vimrc not exist!!!"
	cp ./.vimrc ~/
fi

# taglist.zip
# bufexplorer-7.4.21.zip
# winmanager.zip
cp dir/*.zip ~/.vim
cd ~/.vim
unzip taglist_46.zip
unzip bufexplorer-7.4.21.zip
unzip winmanager.zip



echo " "
echo "tree ~/.vim:"
tree ~/.vim

echo "install finished!!!"
