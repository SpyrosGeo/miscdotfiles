call plug#begin('~/.vim/plugged')
Plug 'epilande/vim-es2015-snippets'
Plug 'scrooloose/nerdtree'
Plug 'kaicataldo/material.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'epilande/vim-react-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter' 
Plug 'davidhalter/jedi-vim'
call plug#end()
source $HOME/.config/nvim/general/mappings.vim
filetype plugin on
"general settings
set nu
set title
set splitbelow
set splitright
set cursorline
set nowrap
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:UltiSnipsExpandTrigger="<C-l>"
"let g:user_emmet_leader_key='<C-e>,'
""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
set t_Co=256
syntax on
let g:material_theme_style = 'darker'

colorscheme material

let g:airline_theme = 'material'
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

