## dot-vim

使用 [Vim](http://www.vim.org/) 的一个 plugin [Vundle](https://github.com/gmarik/vundle) 管理其他 plugin. 有些 plugin 用 Vundle
管理在加载时会出问题，则放入 `~/.vim/` 中以常规方式管理, 对应设置在
`vimrc.vim` 中. 如果可以通过 `submodule` 管理, 则通过 `submodule` 管理.


## 使用
1. Clone `dot-vim` and init submodules
     ```bash
     $ git clone --recursive git@github.com:myhere/dot-vim.git ~/.vim
     ```

2. Clone `Vundle`
     ```bash
     $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     ```

3. Copy code below to `~/.vimrc` file
     ```vim
     " windows 环境下保持一致: 使用 .vim 而不是 _vimrc, 请删除 _vimrc, vimfiles/
     so ~/.vim/init.vim
     ```

4. Launch vim, run `:BundleInstall`



## 设置
1. 目前单独管理的 plugin: `debugger`, `conque`, 两者均依赖 python
2. `plugin/debugger.vim`, 具体设置见: http://zhangl.in/2012/03/debug-php-with-vim-on-windows/
3. `conque`, 更新文件到 http://code.google.com/p/conque/ 下载
4. 解压 `php-manual/vim-php-manual.tgz` 文件到 `php-manual/doc/` 目录下, 具体见: [README](/myhere/dot-vim/tree/master/php-manual/README.md)
5. `node` 的 dictionary 通过 git `submodule` 管理, 对应设置放在 `vimrc.vim` 中
6. `UltiSnips` 依赖 python


## 说明
* 如何使用 [Vundle](https://github.com/gmarik/vundle)
* windows 下 `vundle` 使用请查看 [Vundle for Windows](https://github.com/gmarik/vundle/wiki/Vundle-for-Windows)
* windows 下一些外部命令依赖 [msysgit](http://code.google.com/p/msysgit/) 和 [bin-in-path_windows](https://github.com/myhere/bin-in-path_windows) 下载并放到环境变量中
* 参考 [spf13-vim](https://github.com/spf13/spf13-vim). Awesome vim config files
