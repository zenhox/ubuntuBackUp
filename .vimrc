set wildmode=longest,list " Ex命令自动补全采用bash方式"
syntax on
filetype plugin indent on

"some key
map <C-n> :NERDTree<CR>

"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type="name"

"dirTree 
map <C-n> :NERDTree<CR>

"miniBuf
let g:miniBufExplMaxSize = 2

"taglist
let Tlist_Show_One_File=1           " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=1 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"    "tag按名字排序

"ycm
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1

" global conf
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"
" do NOT ask me load conf or not
let g:ycm_confirm_extrm_conf = 0

" set for python completion
let g:ycm_python_binary_path = 'python3'

" set for java completion
let g:EclimCompletionMethod = 'omnifunc'

"set mouse=a

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

"markdown-preview
let g:mkdp_path_to_chrome = "/mnt/c/Users/Hox/AppData/Local/Google/Chrome/Application/chrome.exe"
" path to the chrome or the command to open chrome(or other modern
" browsers)
" if set, g:mkdp_browserfunc would be ignored

let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" callback vim function to open browser, the only param is the url to open
let g:mkdp_auto_start = 0
" set to 1, the vim will open the preview window once enter the markdown " buffer
let g:mkdp_auto_open = 0
" set to 1, the vim will auto open preview window when you edit the
" markdown file
let g:mkdp_auto_close = 1
" set to 1, the vim will auto close current preview window when change " from markdown buffer to another buffer 
let g:mkdp_refresh_slow = 0
" set to 1, the vim will just refresh markdown when save the buffer or " leave from insert mode, default 0 is auto refresh markdown as you edit or " move the cursor 
let g:mkdp_command_for_global = 0
" set to 1, the MarkdownPreview command can be use for all files, 
 " by default it just can be use in markdown file
 "
 "

 "ctrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|jpg|png|jpeg)$',
  \ } 
