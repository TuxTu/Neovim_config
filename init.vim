:set nu
:set relativenumber
:set autoindent
:set shiftwidth=4
:set tabstop=4
:set mouse=a
:set smarttab
:set softtabstop=4
:set modifiable

let g:neovide_transparency = 0.6
let g:transparency = 0.8
let g:neovide_touch_drag_timeout = 0.17
let g:neovide_cursor_animation_length = 0.03
let g:neovide_cursor_trail_size = 0.6

call plug#begin('C:\Users\hit_t\AppData\Local\nvim\autoload\plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.3' }
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/sharkdp/fd'
Plug 'https://github.com/preservim/nerdtree'

call plug#end()

"Configure for NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NerdTreeDirArrowExpandable="+"
let g:NerdTreeDirArrowCollapsible="~"

"colorscheme deep-space
colorscheme iceberg
"colorscheme nord

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
