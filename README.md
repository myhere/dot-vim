dot-vim
=======

使用 vundle 管理 plugin @see https://github.com/gmarik/vundle


将下面写到 ~/.vimrc 文件中
```vim
" windows 下使用 .vim 而不是 vimfiles
if (has('win32') || has('win64'))
  set rtp+=~/.vim/
endif

so ~/.vim/vundle.vim
so ~/.vim/vimrc.vim

" 如果是 gui 启动, 则加载 gvimrc
if (has('gui_running'))
  so ~/.vim/gvimrc.vim
endif
```



