set nocompatible               " be iMproved
filetype off                   " required!

" 设置 runtimepath
exe 'set rtp+=' . g:vimfile_dir .'/bundle/vundle/'
call vundle#rc()

" let Vundle manage Vundle
" required!
" I add vundle as a submodule of my dot-vim repository, so commnet it.
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

Bundle 'scrooloose/nerdcommenter'


" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
Bundle 'renamer.vim'

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

" jsbeautify
Bundle 'jsbeautify'
Bundle 'matchit.zip'
Bundle 'DBGp-Remote-Debugger-Interface'



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

