# vim-config-install
vim-config-install



说明:
一键安装vim配置，整理常用的vim配置



[1] 安装卸载
1 安装:
./install.sh
2 卸载:
./uninstall.sh



[3] vimrc初步
,ee			新窗口打开~/.vimrc
.vimrc配置为一旦.vimrc被修改时会自动重新加载



[4] 保存项目相关配置 
set path:
gf			打开要搜索的文件
ctrl + ^		返回
ctrl + w + f		水平分割窗口打开要搜索的的文件
:find xxx		在path路径下搜索xxx文件
filereadable		保存test项目相关vim配置



[5] 使用标签tag文件
ctags -R *
vim -t test1		查找test1函数
ctrl + ]		前进	
ctrl + t		回退



[6] 使用taglist插件
只有在有tags的目录下vim打开文件才会显示taglist窗口
taglist窗口快捷键:
<CR>			Enter键跳到tag定义的位置
o			在一个新的窗口中显示tag对应的函数
<Space>			显示tag对应的函数原型
s			更改排序方式
x			taglist窗口放大和缩小



