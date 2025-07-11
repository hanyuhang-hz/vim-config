" test
set number
set hlsearch


" 3 vimrc初步
let mapleader = ","
" editing .vimrc
map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
" When .vimrc is edited,reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

function! SwitchToBuf(filename)
    " find in current tab
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        " find in each tab
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "tabnew " . a:filename
    endif
endfunction


" 4 保存项目相关配置
" **表示所有子目录
" set path=.,/usr/include/** 
set path=.
" test project
if filereadable("/home/hanyuhang/github/vim-config-install/test/test.vim")
    source /home/hanyuhang/github/vim-config-install/test/test.vim
endif
 

" 6 使用taglist插件
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
" let Tlist_Auto_Open = 1


" 7 文件浏览和winmanager
" netrw setting
let g:netrw_winsize = 30
map <silent> <leader>fe :Sexplore!<cr> 
" winmanager
let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 


" 8 lookupfile插件
" lookupfile
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件

if filereadable("/home/hanyuhang/github/vim-config-install/test/tags")
    let g:LookupoFile_TagExpr = "/home/hanyuhang/github/vim-config-install/test/tags"
endif
 
nmap <silent> <leader>lk :LUTags<cr>
nmap <silent> <leader>lw :LUWalk<cr>


" 9 文件类型检测
filetype plugin indent on
" 自动缩进
autocmd FileType c,cpp,h,hpp set shiftwidth=4 | set expandtab


" 10 语法高亮 
syntax enable
" mark setting
nmap <silent> <leader>hl <Plug>MarkSet
vmap <silent> <leader>hl <Plug>MarkSet
nmap <silent> <leader>hh <Plug>MarkClear
vmap <silent> <leader>hh <Plug>MarkClear
nmap <silent> <leader>hr <Plug>MarkRegex
vmap <silent> <leader>hr <Plug>MarkRegex


" 11 cscope
" cscope setting
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("/home/hanyuhang/github/vim-config-install/test/cscope.out")
      cs add /home/hanyuhang/github/vim-config-install/test/cscope.out
  endif
  set csverb
endif

nmap <silent> <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <silent> <leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <silent> <leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <silent> <leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <silent> <leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
" conflicts with ,fe
nmap <silent> <leader>fp :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <silent> <leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>


" 13 智能补全
set completeopt=longest,menu
" C++补全
filetype plugin indent on
set nocp


" 14 自动补全
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-N>"

" 15 使用剪贴板
" ctrl+c:复制当前单词
nmap <C-C> viw"+y
" ctrl+v:黏贴替换其他单词
nmap <C-V> viwdh"+p
