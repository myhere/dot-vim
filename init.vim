" windows 下保持和 linux 下文件名称一致
if (has('win32') || has('win64'))
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

" 改变 mapleader, change character search command
nnoremap \ ,
let mapleader = ","

" 
so ~/.vim/vundle.vim
so ~/.vim/vimrc.vim

" 如果是 gui 启动, 则加载 gvimrc
if (has('gui_running'))
  so ~/.vim/gvimrc.vim
endif

