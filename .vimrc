execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set ruler
set autoindent
set smartindent
set autoread
set dir=/tmp
let g:username = "Gregory Duhamel"
let g:email = "gregory.duhamel@outlook.com"

"remove toolbar in GVIM
:set guioptions-=T

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set t_Co=256

let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" Update by ctrl-s :
"command -nargs=0 -bar Update if &modified 
"                           \|    if empty(bufname('%'))
"                           \|        browse confirm write
"                           \|    else
"                           \|        confirm write
"                           \|    endif
"                           \|endif
"nnoremap <silent> <c-s> :<c-u>Update<CR>
":inoremap <c-s> <Esc>:Update<CR>
:au Filetype perl nnoremap <c-s> :%!perltidy -q -npro<CR>
" Highlight
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_template_autocreate= 1
let g:go_template_file = "hello_world.go"
let g:go_template_test_file = "hello_world_test.go"
let g:go_fmt_autosave = 1
let g:go_get_update = 1
"let g:go_list_type = "quickfix"
let g:go_auto_type_info = 1
let g:go_gotags_bin = 'gotags'

" Syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set signcolumn=yes

" syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_open = 1
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'perlcritic', 'podchecker']
let g:syntastic_enable_python_checker = 1
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_enable_go_checker = 1
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'gometalinter', 'gotype', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" TagBar :
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autoclose = 0
" Tagbar settings to recognise Perl Moo..Moose
let g:tagbar_type_perl = {
    \ 'ctagstype'   : 'Perl',
    \ 'kinds' : [
        \ 'p:packages:1:0',
        \ 'u:uses:1:0',
        \ 'r:requires:1:0',
        \ 'e:extends',
        \ 'w:roles',
        \ 'o:ours:1:0',
        \ 'c:constants:1:0',
        \ 'f:formats:1:0',
        \ 'a:attributes',
        \ 's:subroutines',
        \ 'x:around:1:0',
        \ 'l:aliases',
        \ 'd:pod:1:0',
    \ ],
\ }

let g:tagbar_type_go = {
     \ 'ctagstype' : 'go',
     \ 'kinds'     : [
          \ 'p:package',
          \ 'i:imports',
          \ 'c:constants',
          \ 'v:variables',
          \ 't:types',
          \ 'n:interfaces',
          \ 'w:fields',
          \ 'e:embedded',
          \ 'm:methods',
          \ 'r:constructor',
          \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
          \ 't' : 'ctype',
          \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
          \ 'ctype' : 't',
          \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : expand(g:go_gotags_bin),
    \ 'ctagsargs' : '-sort -silent'
\ }

" Open Tagbar on Go and Perl Files :
autocmd FileType go call SetTagBar()
autocmd FileType perl call SetTagBar()

function! SetTagBar()
    :call tagbar#autoopen(0)
endfunction

" You Complete Me YCM :
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion = 1

" Auto Update Header File :
autocmd BufWritePre * call UpdHeader()

function! UpdHeader()   
  " update Hostname
  silent! execute "1," . 6 .  "g/Host:.*/s//Host: " . hostname()
  " update last mod date
  silent! execute "1," . 6 .  "g/Modified:.*/s//Modified: " . strftime("%d %B %Y %T (%z) By : ") . expand(g:username)
endf
