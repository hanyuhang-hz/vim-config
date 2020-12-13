# vim-config-install
vim-config-install



说明:

一键安装vim配置，整理常用的vim配置



[1] 安装

./install.sh



[2] 卸载

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

taglist窗口快捷键:

<CR>			Enter键跳到tag定义的位置

o			在一个新的窗口中显示tag对应的函数

<Space>			显示tag对应的函数原型

s			更改排序方式

x			taglist窗口放大和缩小




[7] 文件浏览和winmanager

(1)文件浏览

,fe			文件浏览

文件浏览窗口快捷键:

<CR>			Enter键进入，ctrl+^返回

c			切换vim当前目录

d			创建目录

D			删除目录或文件

R			改名目录或文件

(2)winmanager

,wm			打开/关闭winmanager窗口

ctrl + w + f		切换到左上窗口,然后ctrl + n在BufExplorer和FileExplorer之间切换

ctrl + w + b		切换到左下窗口

ctrl + w + w 		切换窗口




[8] lookupfile插件查询

F5			打开/关闭lookupfile窗口

Enter			回车打开第一个匹配项

ctrl + n		在下拉列表向下选择

ctrl + p		在下拉列表向上选择

,lk			在当前目录中查找文件(默认)

,ll			在指定目录中查找文件




[9] 文件类型检测

ctrl + d		自动缩进		 

ctrl + t		自动缩进		 




[10] 语法高亮 

,hl			高亮选中的单词

,hh			取消高亮选中的单词

,hr			高亮匹配正则表达式的单词






