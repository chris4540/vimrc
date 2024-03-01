"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show Line numbers
set number

" Allow to use mouse
set selectmode=mouse
" set mouse=a
" Show Commands
set showcmd

" Color column
set colorcolumn=80,100,120
highlight ColorColumn ctermbg=DarkMagenta

" Color scheme
runtime theme.vim

"""""""""""""""""""""""""""""""""""""""
" Custom File types
"""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.cu,*.cl set ft=cpp

"""""""""""""""""""""""""""""""""""""""
" Custom Commands
"""""""""""""""""""""""""""""""""""""""
" Delete command from the basic.vim
" delcommand W


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline Customized
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'fileformat', 'fileencoding', 'filetype'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}',
      \   'charvaluehex': '0x%B'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

"""""""""""""""""""""""""""""""""""""""""
" User self define setting
"""""""""""""""""""""""""""""""""""""""""
"" set autochdir
"" set list
"" set listchars=tab:\|\
""""""""""""""""""""""""""""""""""""""""
" fortran specific
""""""""""""""""""""""""""""""""""""""""
"let fortran_fold=1
"set foldmethod=syntax
"set foldlevelstart=99
"set foldcolumn=4
"let fortran_free_source=1
"let fortran_have_tabs=1
"let fortran_more_precise=1
"let fortran_do_enddo=1
"""""""""""""""""""""""""""""""""""""""""
" Remark:
" zc: fold codes
" zo: expend codes
" zC: fold all codes
" zO: expend all codes
" Very slow if large fortran file.
"
""""""""""""""""""""""""""""""""""""""""
" python specific
" (Need to install python.vim)
""""""""""""""""""""""""""""""""""""""""
"let python_highlight_all=1
"let python_version_2=1


"""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags + taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""
" let Tlist_Ctags_Cmd="/usr/bin/ctags"
" Control + F12 to create tags
" map <C-F12> :!ctags -R --c++-kinds=+p --fortran-kinds=+is --fields=+iaS --extra=+q .<CR>
"set updatetime=100000000000000000000000000000
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Remark: Ctrl + ] - go to definition
"         Ctrl + T - Jump back from the definition
"
"""""""""""""""""""""""""""""""""""""""""""""""""""
" winmanager config
"""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout='FileExplorer|TagList|BufExplorer'

" let g:winManagerWindowLayout="BufExplorer|TagList"
"let g:winManagerWindowLayout="BufExplorer,FileExplorer|TagList"
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Remark: use Control + N to switch between
"         BufExplorer and FileExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:winManagerWidth=35
"let g:defaultExplorer=0
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
" nmap <F3> :WMToggle<cr>
""""""""""""""""""""""""""""""
" BufExplorer
""""""""""""""""""""""""""""""
" let g:bufExplorerDefaultHelp=0       " Do not show default help.
" let g:bufExplorerShowRelativePath=1  " Show relative paths.
" nmap <C-b>n  :bnext<CR>
" nmap <C-b>p  :bprev<CR>
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize=15  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"autocmd BufWinEnter \[Buf\ List\] setl nonumber

""""""""""""""""""""""""""""""""""
"Remark: basic operation of bufExplorer
"        1. use :badd <file1.txt>
"        2. use :bdelete <file2.txt>
"        3. use :buffers! to list buffers
"        4. use :[N]buffer, :buffer <file.txt>
"                or Ctrl + b n/p to switch between files
"
""""""""""""""""""""""""""""""""""
"
""""""""""""""""""""""""""""""""""
" SuperTab
""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType="context"

""""""""""""""""""""""""""""""""""
" Commentary
""""""""""""""""""""""""""""""""""
noremap <leader>/ :Commentary<cr>
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType ruby setlocal commentstring=#\ %s
autocmd FileType python setlocal commentstring=#\ %s


" set number
" set selectmode=mouse
" set showcmd
" au BufNewFile,BufRead *.cu,*.cl set ft=cpp
" au BufNewFile,BufRead *.md,*.markdown set ft=markdown
" command DS call DeleteTrailingWS()
" command Mystyle execute "%!astyle -A2 -Udy"
