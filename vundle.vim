set nocompatible               " be iMproved
filetype off                   " required!

" 设置 runtimepath
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'

" NERDTree 
Bundle 'scrooloose/nerdtree.git'
map <silent> <Leader>v :NERDTree<CR>
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.hg', '\.svn', '\.bzr', '^\.$', '^\.\.$']
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeChDirMode=0


" Bundle 'kana/vim-scratch'
" map <silent> <Leader>so :ScratchOpen<CR>
Bundle 'duff/vim-scratch'
map <silent> <Leader>so :Scratch<CR>

" 快速移动
Bundle 'Lokaltog/vim-easymotion'

" 对齐
Bundle 'godlygeek/tabular'


" snipmate's dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
" from  https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
Bundle 'garbas/vim-snipmate'
" Source support_function.vim to support snipmate-snippets.
if filereadable(expand("~/.vim/bundle/vim-snippets/helpers/support_functions.vim"))
  source ~/.vim/bundle/vim-snippets/helpers/support_functions.vim
endif


" 补全
Bundle 'Shougo/neocomplcache'
" let g:neocomplcache_enable_at_startup = 1


" Bundle 'SirVer/ultisnips'
" Bundle 'JazzCore/neocomplcache-ultisnips'
Bundle 'git@github.com:myhere/vim-snippets.git'
" let g:UltiSnipsSnippetDirectories=['my-UltiSnips']
" let g:UltiSnipsEditSplit = 'vertical'
" let g:UltiSnipsJumpForwardTrigger  = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


" ctrlp buffer|mru
" fuzzy file|buffer|mru finder
Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_by_filename = 1
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'
let g:ctrlp_lazy_update = 1
let g:ctrlp_max_files = 1000
let g:ctrlp_max_depth = 10
let g:ctrlp_root_markers = ['myhere.zl', '.git', '.hg', '.svn', '.bzr','_darcs']
let g:ctrlp_custom_ignore = {'dir':  '\.git$\|\.hg$\|\.svn$', 'file': '\.exe$\|\.so$\|\.dll$' }




" windows 下 ack 安装依赖 https://github.com/myhere/bin-in-path_windows/blob/master/ack.bat
if executable('ack')
  Bundle 'mileszs/ack.vim'
endif


" zencoding
Bundle 'ZenCoding.vim'
let g:user_zen_settings = {
\  'lang': "zh-CN",
\  'timezone': ' GMT+0800',
\  'javascript': {
\    'snippets': {
\      'cc':
\         "/**\n"
\        ." * @author   Lin Zhang <myhere.2009@gmail.com>\n"
\        ." * @datetime ${datetime}\n"
\        ." */"
\    }
\   },
\  'css': {
\    'extends': 'js'
\   },
\  'php': {
\    'snippets': {
\      'cc':
\         "<?php\n"
\        ."/**\n"
\        ." * @author   Lin Zhang <myhere.2009@gmail.com>\n"
\        ." * @datetime ${datetime}\n"
\        ." */"
\     }
\   }
\}


" 注释
Bundle 'tComment'

" fuzzyFinder 打开文件
Bundle 'L9'
Bundle 'FuzzyFinder'
" :h fuf-vimrc-example
nnoremap <silent> <Leader>f  :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <Leader>b  :FufBuffer<CR>

Bundle 'tpope/vim-surround'

" 重命名
Bundle 'renamer.vim'

" 搜索补全
" Bundle 'SearchComplete'

" bufexplorer.zip
Bundle 'bufexplorer.zip'
let g:bufExplorerSplitRight=0


Bundle 'taglist.vim'
" 只显示当前文件
let Tlist_Show_One_File = 1
nnoremap <silent> <Leader>t :TlistToggle<CR>

" vimwiki
Bundle 'vimwiki'
let wiki_1 = {}
let wiki_1.path = 'D:/work/vimwiki/wiki/'
let wiki_1.path_html = 'D:/work/vimwiki/wiki_html/'
let wiki_1.template_path = 'D:/work/vimwiki/templates/'
let wiki_1.template_default = 'default'
let wiki_1.template_ext = '.tmpl'
let wiki_1.auto_export = 1
let wiki_1.css_name = ''

let g:vimwiki_list = [wiki_1]

" jsl
Bundle 'compilerjsl.vim'
let g:jsl_config = '~/.vim/conf/jsl.conf'

" favEx
" Bundle 'FavEx' 

" jsbeautify
Bundle 'jsbeautify'

" html文件 %
Bundle 'matchit.zip'

" 版本控制 svn, git, ...
Bundle 'vcscommand.vim'

" css3 相关
Bundle 'css3-syntax-plus'

" less 
Bundle 'groenewege/vim-less'

" let g:cssColorVimDoNotMessMyUpdatetime = 1
Bundle 'skammer/vim-css-color'

" json syntax highlight
Bundle 'vim-json-bundle'
au! BufRead,BufNewFile *.json set filetype=json

Bundle 'Gundo'

Bundle "lepture/vim-velocity"

Bundle "pangloss/vim-javascript"

" jscomplete
Bundle "teramako/jscomplete-vim"
:let g:jscomplete_use = ['dom', 'moz']
" nodejs 'omnifunc' function of vim
Bundle 'git@github.com:myhere/vim-nodejs-complete.git'
let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}

" for vim-script debug
Bundle 'Decho'


" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

