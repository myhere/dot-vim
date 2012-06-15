vim 退出时 session 保存位置

```vim
autocmd VimLeave * mks! ~/.vim/vim-sessions/session.vim
```

:h save-file
