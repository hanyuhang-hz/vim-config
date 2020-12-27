#!/bin/bash
VERSION="vim-config 1.0.0"
echo "VERSION:${VERSION}"

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
# lookupfile-1.8.zip
# genutils-2.5.zip
# omnicppcomplete-0.41.zip
if [ ! -d ~/.vim ];then
	echo "~/.vim not exit!mkdir one!"
	mkdir ~/.vim
fi
cp dir/*.zip ~/.vim
cd ~/.vim
unzip taglist_46.zip
unzip bufexplorer-7.4.21.zip
unzip winmanager.zip
unzip lookupfile-1.8.zip
unzip genutils-2.5.zip
unzip omnicppcomplete-0.41.zip


# mark.vim
# supertab.vim
cd ${CUR_DIR}
cp dir/plugin/mark.vim ~/.vim/plugin
cp dir/plugin/supertab.vim ~/.vim/plugin



echo " "
echo "tree ~/.vim:"
tree ~/.vim
echo "install finished!!!"
