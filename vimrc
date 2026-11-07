call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings' " Устанавливает сервера автоматически
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'

call plug#end()


" Для лучшего автодополнения и выбора:
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-snippets', 'coc-css', 'coc-html']

" Кодтровка UTF-8
set encoding=utf8
" Тема
colorscheme catppuccin_mocha 
" Подцветка синтаксиса
syntax on
" Нумерация строк
set number
set relativenumber
" Отступы от левого края
set foldcolumn=1
" Подцветка результатов поиска
set hlsearch
set incsearch
set tabstop=3      " Ширина таба = 2 пробела
set shiftwidth=3   " Размер отступа при автоформатировании
set expandtab      " Заменять табы на пробелы
set foldmethod=indent " Сворачивает блоки

" комманды
map <C-n> :NERDTreeToggle<CR>
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"
