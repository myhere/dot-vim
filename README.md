## dot-vim

使用 [Vim](http://www.vim.org/) 的一个 plugin [Vundle](https://github.com/gmarik/vundle) 管理其他 plugin. 有些 plugin 用 Vundle
管理在加载时会出问题，则放入 `~/.vim/` 中以常规方式管理.


## 使用
1. Clone `dot-vim`
     ```bash
     $ git clone git@github.com:myhere/dot-vim.git ~/.vim
     ```

2. Clone `Vundle`
     ```bash
     $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     ```

3. Copy code below to `~/.vimrc` file
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

4. Launch vim, run `:BundleInstall`

## 设置
1. plugin/debugger.vim 需要有 python, 具体设置见: http://zhangl.in/2012/03/debug-php-with-vim-on-windows/
2. 解压 php-manual/vim-php-manual.tgz 文件到 php-manual/doc/ 目录下, 具体见: [php-manual] [/myhere/dot-vim/tree/master/php-manual/README.md]


## 说明
* windows 下使用请查看 [Vundle for Windows](https://github.com/gmarik/vundle/wiki/Vundle-for-Windows)
* 如何使用 [Vundle](https://github.com/gmarik/vundle)
* 参考 [spf13-vim](https://github.com/spf13/spf13-vim). Awesome vim config files
