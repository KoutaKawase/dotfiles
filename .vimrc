call plug#begin()
"行末スペースや全角を赤色にしてくれる"
Plug 'bronson/vim-trailing-whitespace'
"インデント可視化"
" Plug 'yggdroot/indentline'
Plug 'yggdroot/indentline'
"ペア自動補完"
Plug 'jiangmiao/auto-pairs'
"Rust"
Plug 'rust-lang/rust.vim'
"close tag補完"
Plug 'alvan/vim-closetag'
"TypeScript""
Plug 'leafgarland/typescript-vim'
"LSP"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"JS"
Plug 'pangloss/vim-javascript'
"ファイラー"
Plug 'justinmk/vim-dirvish'
"エディター統一"
Plug 'editorconfig/editorconfig-vim'
"自動インポートとfmt"
Plug 'mattn/vim-goimports'
"GruvBox
Plug 'morhetz/gruvbox'
call plug#end()

"gruvboxのコンフィグ
set background=dark
autocmd vimenter * colorscheme gruvbox

"close tag補完に対応する拡張子"
let g:closetag_filenames = '*.html,*.jsx,*.tsx'
"インデントの色"
let g:indentLine_color_term = 65
"Rust保存時自動整形
let g:rustfmt_autosave = 1

"let g:ale_sign_warning = '--'参考: https://github.com/neoclide/coc.nvim/blob/master/doc/coc.txtのjumpCommand"
nmap <silent> <F12> :call CocAction('jumpDefinition', 'split')<CR>

let mapleader = "\<Space>"
"文字コードを明示的に指定"
set fenc=utf-8
"バックアップファイルを作らせない
set nobackup
"スワップファイルを殺す
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" コマンドラインの補完
set wildmode=list:longest
"ESCをjjに割当"
inoremap <silent> jj <ESC>

"タブとインデント設定"
set tabstop=4
set autoindent
set expandtab
set smartindent
set showmatch
set shiftwidth=4

"検索設定"
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"不可視文字の設定"
set list
set listchars=tab:>.,trail:-,eol:↲,extends:>,precedes:<,nbsp:%

"保存と行末空白を削除（vim-tariling-white-spaceの効果)"
nnoremap <Leader>w :w<CR> :FixWhitespace<CR>
nnoremap <Leader>q :q<CR>
"行末にセミコロンを挿入"
nnoremap <Leader><ENTER> A;<ESC>

syntax enable
filetype plugin on
filetype indent on

set number
set cursorline
set cursorcolumn
set visualbell
set laststatus=2
"color molokai
"ウィンドウサイズはマウスで調整する方が楽なので"
set mouse=n

"背景色を全てなくす"
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

