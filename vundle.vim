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
map <silent> ,v :NERDTree<CR>

Bundle 'kana/vim-scratch'
map <silent> <Leader>so :ScratchOpen<CR>

" 注释
Bundle 'scrooloose/nerdcommenter'

" 快速移动
Bundle 'Lokaltog/vim-easymotion'

" 对齐
Bundle 'godlygeek/tabular'

Bundle 'kien/ctrlp.vim'

" snipmate's dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"
" from  https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
Bundle 'garbas/vim-snipmate'
Bundle 'spf13/snipmate-snippets'
" Source support_function.vim to support snipmate-snippets.
if filereadable(expand("~/.vim/bundle/snipmate-snippets/snippets/support_functions.vim"))
  source ~/.vim/bundle/snipmate-snippets/snippets/support_functions.vim
endif


" fuzzyFinder 打开文件
Bundle 'L9'
Bundle 'FuzzyFinder'
" :h fuf-vimrc-example
nnoremap <silent> ,f  :FufFileWithCurrentBufferDir<CR>


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


" 重命名
Bundle 'renamer.vim'

" 搜索补全
Bundle 'SearchComplete'

" bufexplorer.zip
Bundle 'bufexplorer.zip'
let g:bufExplorerSplitRight=0

Bundle 'taglist.vim'
" 只显示当前文件
let Tlist_Show_One_File = 1
nnoremap <silent> <F6> :TlistToggle<CR>

" vimwiki
Bundle 'vimwiki'
let wiki_1 = {}
let wiki_1.path = 'D:/work/www/myhere.zl/web/vimwiki/wiki/'
let wiki_1.path_html = 'D:/work/www/myhere.zl/web/vimwiki/wiki_html/'
let wiki_1.template_path = 'D:/work/www/myhere.zl/web/vimwiki/templates/'
let wiki_1.template_default = 'default'
let wiki_1.template_ext = '.tmpl'
let wiki_1.auto_export = 1
let wiki_1.css_name = ''

let g:vimwiki_list = [wiki_1]

" jsl
Bundle 'compilerjsl.vim'
let g:jsl_config = '~/.vim/conf/jsl.conf'

" favEx
Bundle 'FavEx' 

" jsbeautify
Bundle 'jsbeautify'

" html文件 %
Bundle 'matchit.zip'

" 版本控制 svn, git, ...
Bundle 'vcscommand.vim'

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

