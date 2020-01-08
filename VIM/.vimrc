"---Vim config file---

"---set a column to indicate 80 characters---
set colorcolumn=80
"---show the line numbers---
set number
syntax on
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
"---show trailing whitespace---
set list lcs=tab:·⁖,trail:¶
highlight comment ctermfg=lightblue
highlight constant ctermfg=red
highlight trail ctermfg=yellow
"---show hard tap---replace ** with a arrow later
set list listchars=tab:**,trail:-