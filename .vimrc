set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 将你自己对非插件片段放在这行之后
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'  
let g:ycm_seed_identifiers_with_syntax=1   
let g:ycm_confirm_extra_conf=0  
let g:ycm_key_invoke_completion = '<c-z>'
"set completeopt=longest,menu    
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }
let g:ycm_enable_diagnostic_signs = 0
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey

"inoremap ( ()<LEFT>
"inoremap [ []<LEFT><CR><Esc>O
"inoremap { {}<LEFT><CR><Esc>O
"inoremap  <LEFT>
"inoremap ' ''<LEFT>
"inoremap < <><LEFT>

"function! RemovePairs()
"    let s:line = getline(".")
"    let s:previous_char = s:line[col(".")-1]
"
"    if index(["(","[","{"],s:previous_char) != -1
"        let l:original_pos = getpos(".")
"        execute "normal %"
"        let l:new_pos = getpos(".")
"        " only right (
"        if l:original_pos == l:new_pos
"            execute "normal! a\<BS>"
"            return
"        end
"
"        let l:line2 = getline(".")
"        if len(l:line2) == col(".")
"            execute "normal! v%xa"
"        else
"            execute "normal! v%xi"
"        end
"    else
"        execute "normal! a\<BS>"
"    end
"endfunction
"
"function! RemoveNextDoubleChar(char)
"    let l:line = getline(".")
"    let l:next_char = l:line[col(".")]
"
"    if a:char == l:next_char
"        execute "normal! l"
"    else
"        execute "normal! i" . a:char . ""
"    end
"endfunction

"inoremap <BS> <ESC>:call RemovePairs()<CR>a
"inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
"inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
"inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a
"inoremap > <ESC>:call RemoveNextDoubleChar('>')<CR>a

set number
set backspace=indent,eol,start
syntax on
set mouse=a
set t_Co=256
filetype indent on
set autoindent
set wrap
set linebreak
set showmatch
set incsearch
set hlsearch
set noerrorbells
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"colorscheme yowish

nnoremap gl :YcmCompleter GoToDefinitionElseDeclaration<CR>

hi MatchParen ctermbg=Yellow guibg=lightblue

