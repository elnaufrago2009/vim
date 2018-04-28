execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set encoding=utf-8
set clipboard=unnamed
set background=dark
set noswapfile

" Auto guardado
" ==============
let g:auto_save = 1 
let g:auto_save_silent = 1

" Autoclose Configuracion
" ========================
let g:autoclose_on = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" Airline Configuracion
" ======================
let g:airline_symbols = {}
let g:airline_left_sep = '►'
let g:airline_right_sep = '◄'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.whitespace = ''

" Monokai Configuracion
" =====================
set t_Co=256
colorscheme monokai
let g:monokai_term_italic = 1


"javascript activar
"==================== 
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Control P configuracion
" =======================
set wildignore=*/node_modules/*,*.so,*.swp



" nertred
" =========
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

  call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
  call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
  call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
  call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
  call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')  
  call NERDTreeHighlightFile('vue', 'green', 'none', '#ff00ff', '#151515')
let g:nerdtree_tabs_open_on_console_startup=1
map <C-n> :NERDTreeToggle<CR>

