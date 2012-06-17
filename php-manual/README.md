这个目录放 php 的 manual, 将 `vim-php-manual.tgz` 解压到 `./doc` 目录
在 vim 中要有这个设置:

```vim
set rtp+=~/.vim/php-manual/
autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"
```

具体见: PHP manual in Vim help format 
@see
* http://vim.wikia.com/wiki/PHP_manual_in_Vim_help_format
* http://www.laruence.com/2010/08/18/1718.html
