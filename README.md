dot-vim
=======

使用 vundle 管理 plugin @see https://github.com/gmarik/vundle


将下面写到 ~/.vimrc 文件中
```vim
let g:vimfile_dir = ''

" window or *nix
if (has('win32') || has('win64'))
  let g:vimfile_dir = '~/vimfiles'
elseif (has('unix'))
  let g:vimfile_dir = '~/.vim'
endif

" source vundle.vim
exe 'so ' . g:vimfile_dir . '/vundle.vim'
" source vim 配置
exe 'so ' . g:vimfile_dir . '/vimrc.vim'
```

将下面写到 ~/_gvimrc 文件中
```vim
so ~/vimfiles/gvimrc.vim
```


