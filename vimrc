""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Visual stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn syntax highlighting on
syntax on

"Insert 8 spaces when tab is pressed (if not softtabstop is set)
set tabstop=8
"Insert space characters when tab is pressed
set expandtab
"Insert 4 spaces when tab is pressed (overrides tabstop if expandtab is set)
set softtabstop=4
"Controls how many spaces are indented when > and < is used
set shiftwidth=4

"Remove trailing whitespace for .py/.yml/.init/.rst/.spec files
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.yml :%s/\s\+$//e
autocmd BufWritePre *.init :%s/\s\+$//e
autocmd BufWritePre *.rst %s/\s\+$//e
autocmd BufWritePre *.spec %s/\s\+$//e
autocmd BufWritePre *.conf %s/\s\+$//e

"Show line numbers
set number
"Show ruler on bottom of vim
set ruler

"Ignore case when searching
set ignorecase
"Set smartcace on (aka step will find stepbrother and Steps, but Step wont
"find stepbrother)
set smartcase
"Highlight search results
set hlsearch

set showmatch
set mat=2

"Set colorscheme
"colorscheme pychimp

"Show a blue vertical line on the 80th character (pep8 compliant)
if exists('+colorcolumn')
  highlight ColorColumn ctermbg=23
  call matchadd('ColorColumn', '\%80v', 100)
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nomodeline
"set cursorline
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
 
" Greek mapping for normal mode
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR
set langmap+=ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj
set langmap+=κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

"Enable mouse in vim
set mouse=a

"Set spell checking languages
set spelllang=en,el

