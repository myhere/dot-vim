" ------------------选项------------------
set nocompatible
" 不产生备份文件
set nobackup
set ignorecase
set smartcase
set hlsearch
set incsearch

" backspace 删除键
set backspace=indent,eol,start
set expandtab

set wrap

set foldcolumn=1
set number

set history=1000

" set spell

" 保存 bufferlist
set viminfo+=%

" 显示特殊字符(区分 tab 和 空格)
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to


set cursorline

set nostartofline

" Start scrolling three lines before the horizontal window border
set scrolloff=3

set display=lastline

" default fileencoding
set fenc=utf-8
set fencs=utf-8,ucs-bom,euc-jp,gb18030,gbk,gb2312,cp936

" see help (complex)
set fo=tcrqn

" tab spacing (settings below are just to unify it)
set tabstop=2
" unify
set softtabstop=2
" unify
set shiftwidth=2

set textwidth=78

" 状态栏设置
if has('cmdline_info')
  set ruler                   " show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
  set showcmd                 " show partial commands in status line and
  " selected characters/lines in visual mode
endif
if has('statusline')
  set laststatus=2

  " Broken down into easily includeable segments
  set statusline=%t     " Filename
  set statusline+=%m%r%h%w  " Options
  " set statusline+=%{fugitive#statusline()} "  Git Hotness
  " set statusline+=\ [%{&ff}/%Y]           " filetype
  " set statusline+=\ [%{getcwd()}]         " current dir
  set statusline+=\ [%<%{expand('%:p:h')}]    " path to current file
  set statusline+=\ [%{&fenc==\"\"?&enc:&fenc}]  " fileencoding
  set statusline+=%=%-10.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif


set diffopt=vertical
set splitright

" 无限回退, 确保目录存在
set undodir=~/.vim/vim-undodir
set undofile


" 进入 php 文件 help 设置查看 php-manual
set rtp+=~/.vim/php-manual/
autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"

" 进入 js 文件 https://github.com/guileen/vim-node
autocmd FileType javascript set dictionary+=~/.vim/node-dict/dict/node.dict


" 切换 buffer 后立即切换 cwd
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif


" 自动保存 session
set sessionoptions=buffers,curdir,resize,folds,tabpages  
" 注意目录要存在  
autocmd VimLeave * mks! ~/.vim/vim-sessions/session.vim
function! ReadSession()
  let session_file = $HOME . '/.vim/vim-sessions/session.vim'
  if filereadable(session_file)
    execute "so " . session_file
  else
    echo 'session file "' . session_file . '" is not readable!'
  endif
endfunction
" 启动 vim 时自动读取 session 文件, 目前重新定义 vim.bat/gvim.bat
" autocmd VimEnter * :call ReadSession()


syntax on
filetype plugin indent on

colorscheme desert


" ------------------按键映射------------------

" 复制
vnoremap <silent> <S-y> "+y

" 搜索选中
vnoremap <silent> ,/ y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap <silent> ,? y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>


" 打开 cmd
if (has('win32'))
  map <silent> <Leader>st :silent !start<CR>
endif

map <silent> ,q :close<CR><CR>

"" 窗口大小
map <silent> ,> :vert res<CR>
map <silent> ,< :res<CR>
map <silent> ,, <C-W>=

" command-mode 移动
cnoremap <M-f> <Right>
cnoremap <M-b> <Left>

" insert-mode 移动
imap <silent><C-f> <Right>
imap <silent><C-b> <Left>
imap <silent><M-f> <S-Right>
imap <silent><M-b> <S-Left>
imap <silent><C-a> <Home>
imap <silent><C-e> <End>

" 保存
nmap <silent><C-s> :w<CR>
imap <silent><C-s> <Esc>:w<CR>


" 快速移动
map <C-k> 5k
map <C-j> 5j

" 插入当前日期
nnoremap <F7> "=strftime("%c")<CR>P
inoremap <F7> <C-R>=strftime("%c")<CR>


" ------------------单独管理plugin按键映射------------------
"  conque 按键
nnoremap <silent> ,c :ConqueTermVSplit cmd<CR>



" ------------------函数------------------

" use tidy to beautify html
" make sure tidy is in the path
function! BeautifyHtml()
  setlocal equalprg=tidy\ -quiet\ -indent\ -wrap\ 0\ --show-errors\ 0
  normal gg=G
endfunction

" YUICompressor
function! YUICompressor()
  " let yuicompressor_program = 'java -jar D:/tools/ourtools/yui-compressor/yuicompressor.jar --verbose'
  let yuicompressor_program = 'java -jar D:/tools/ourtools/yui-compressor/yuicompressor.jar'

  let yui_option_charset = '--charset ' . &fileencoding

  let current_file = expand('%:p')
  if match(current_file, "\.js$") != -1
    let yui_option_type = '--type js'
  elseif match(current_file, "\.css$") != -1
    let yui_option_type = '--type css'
  else
    echoerr 'Error: File "' . current_file . '" is not js or css!'
    return
  endif

  let yui_option_outputfile = substitute(current_file, '\.\(js\|css\)$', '-min\.\1', "")
  if yui_option_outputfile == current_file
    echoerr 'Error: Cannot substitute filename to "-min" file!'
    return
  endif

  let yui_option_outputfile = '-o ' . shellescape(yui_option_outputfile)
  let current_file = shellescape(current_file)


  let yui_options = yui_option_charset . ' ' . yui_option_type . ' ' . yui_option_outputfile . ' ' . current_file
  let cmd = yuicompressor_program . ' ' . yui_options

  " echo cmd
  " return

  let cmd_output = system(cmd)

  echo cmd_output
endfunction



" 做批量替换时用来产生 唯一 id
" :%s;hello;\="hello-world-" . AutoIncrease();g
let g:auto_increase_index = 0
function! AutoIncrease()
  let g:auto_increase_index = g:auto_increase_index + 1
  return  g:auto_increase_index
endfunction


" below is vim73's default settting

" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
