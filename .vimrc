""viとの互換モードをoff
"set nocompatible
"filetype off
"
""起動時のみ読み込みたいものはここに
"if has('vim_starting')
"    set runtimepath+=~/.vim/bundle/neobundle.vim
"
"" NeoBundleを初期化
"    call neobundle#begin(expand('~/.vim/bundle'))
"endif
""neobundle自体をnebundleで管理
"NeoBundleFetch 'Shougo/neobundle.vim'

if &compatible
    set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')

" インストールするプラグインをここに記述
call dein#add ('Shougo/unite.vim')
call dein#add ('Shougo/vimfiler.vim')
call dein#add ('sgeb/vim-matlab')
call dein#add ('itchyny/lightline.vim')
"call dein#addNeoBundle ('tomasr/molokai')
call dein#add ('Shougo/neocomplete.vim')
call dein#add ('Shougo/neosnippet')
call dein#add ('Shougo/neosnippet-snippets')
call dein#add ('Shougo/neocomplcache')
call dein#add ('kana/vim-operator-user')
call dein#add ('kana/vim-textobj-user')
call dein#add ('rhysd/vim-operator-surround')
"call dein#addNeoBundle ('Yggdroot/indentLine')
call dein#add ('davidhalter/jedi-vim.git')
"静的解析
call dein#add ('scrooloose/syntastic')
call dein#add ('vim-scripts/matlab.vim')
call dein#add ('vim-scripts/MatlabFilesEdition')
"call dein#addNeoBundle ('scrooloose/nerdtree')
call dein#add ('thinca/vim-quickrun')
"call dein#addNeoBundle ('aperezdc/vim-template')
"call dein#addNeoBundle ('kristijanhusak/vim-hybrid-material')
"call dein#addNeoBundle ('bronson/vim-trailing-whitespace')
call dein#add ('tpope/vim-surround')
call dein#add ('plasticboy/vim-markdown')
call dein#add ('kannokanno/previm')
call dein#add ('tyru/open-browser.vim')
call dein#add ('Haron-Prime/Antares')
call dein#add ('haya14busa/vim-open-googletranslate')
"call neobundle#end()

call dein#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin on
filetype indent on



colorscheme antares
syntax on "コード色分け
set t_Co=256
syntax enable

"End Neobundle settings.

    set number "行番号を表示する
    set title  "編集中のファイル名を表示
    set tabstop=4 "インデントをスペース２つ分
    set expandtab 
    set showmatch "括弧入力時の対応する括弧を表示
    set shiftwidth=4
    set smartindent "スマートインデント
    set list
    set nrformats-=octal
    set hidden
    set history=50 "保存するコマンド履歴の数
    set virtualedit=block
    set whichwrap=b,s,[,],<,>
    set backspace=indent,eol,start
    set wildmenu "コマンドモードの補完
    set fileencoding=utf-8
    set scrolloff=5
    set cursorline "カーソルラインをハイライト
    set clipboard=unnamed,autoselect
    set wildmenu wildmode=list:full
    "set nowrap
    set wrap
    set wrapscan "検索時に最後までいったら最初に戻る
    set incsearch "インクリメントサーチ、一文字入力ごとに検索を行う
    set ignorecase "大文字・小文字の区別なく検索する
    set nobackup
    set noswapfile
    set nowritebackup " We have vcs, we don't need backups.
    set hlsearch "検索結果をハイライト
    set tags=./tags;
    "set spell
    set spelllang=en,cjk
    "set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=l
    set guioptions-=L
    set guioptions-=b
    set splitright
    ""タブページを常に表示
    "set showtrabline=2
    ""gVimでもテキストベースのタブページを使う
    "set guioptions-=e



    "autocmd GUIEnter * set transparency=240

    nnoremap<Space>w  :<C-u>w<CR>
    nnoremap<Space>q  :<C-u>q<CR>
    nnoremap<Space>Q  :<C-u>q!<CR>
    nnoremap<silent><C-e> :NERDTreeToggle<CR>
    inoremap jk  <ESC>
    nnoremap j gj
    nnoremap k gk
    "ESC二どおしでハイライトの切り替え
    nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

    nnoremap <silent> <Leader>+ :vertical resize +10<CR>
    nnoremap <silent> <Leader>- :vertical resize -10<CR>
    "" edit/reload .vimrc
    nnoremap <silent> <Space>ev :<C-u>edit ~/.vimrc<CR>


    "google trans
    nnoremap <silent><Space>gt :OpenGoogleTranslate<CR>




"---------------------------------------------------------------------
"neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

"----------------------------------------------------------------------
"neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif



"辞書の登録

let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'txt' : $HOME.'/.vim/dict/hentai.dict'
    \ }



"}}}
""Quick Split View Sizing
"template のパス設定します
"let $VIMTEMPLATE='$~/.vim/templates'
"quickrun用の設定
let g:quickrun_config = {'*': {'hook/time/enable':'1'},}
nnoremap<Space>r :QuickRun<CR>

let g:jedi#completions_command="<C-Space>" 



""------------------------------------------------------------------------------------
au BufRead,BufNewFile *.md set filetype=markdown


"vimfiler setup
"nnoremap ,file :VimFiler -horizontal -double  -no-quit<Enter> ~
nnoremap ,file :VimFiler -split -simple -winwidth=20 -no-quit<Enter> ~
"safe mode 解除
let g:vimfiler_safe_mode_by_default=0

"unite.vim setup
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ubf :<C-u>Unite buffer<CR>
nnoremap <silent> ,ub :<C-u>Unite bookmark<CR>
nnoremap <silent> ,uf :<C-u>Unite file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

call unite#custom_default_action('source/bookmark/directory' , 'vimfiler')
au Filetype unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au Filetype unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')

"C setings for quickrun.vim
let g:quickrun_config = {}
if executable('C')
    let g:quickrun_config.c  = {'exec': 'C -m %s %a'}
    let g:quickrun_config.cpp = {'exec': 'C -p %s %a'}
endif


