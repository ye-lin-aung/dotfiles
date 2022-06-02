set nocompatible              " be iMproved, required
filetype on   
filetype off                  " required

" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

execute pathogen#infect()


	let g:EasyMotion_do_mapping = 0 " Disable default mappings

	" Jump to anywhere you want with minimal keystrokes, with just one key binding.
	" `s{char}{label}`
nmap <Space> <Plug>(easymotion-overwin-f)
	" or
	" `s{char}{char}{label}`
	" Need one more keystroke, but on average, it may be more comfortable.
nmap <Space> <Plug>(easymotion-overwin-f2)

	" Turn on case insensitive feature
	let g:EasyMotion_smartcase = 1

	" JK motions: Line motions
	map <Leader>j <Plug>(easymotion-j)
	map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

	" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
	" Without these mappings, `n` & `N` works fine. (These mappings just provide
	" different highlight method and have some other features )
	map  n <Plug>(easymotion-next)
	map  N <Plug>(easymotion-prev)
map <Leader>k <Plug>(easymotion-k)


	autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

	imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)

	imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)

	imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)



	"noremap i k
	"noremap <C-I> i
	"noremap j h
	"noremap k j


	let g:pymode_python = 'python3'


	" let g:syntastic_python_mmand("clear; rspec " . bufname("%"))<CR>

	map <C-R>vc :VimuxRunCommand("

			" Prompt for a command to run
			map <C-R>vp :VimuxPromptCommand<CR>
			"
			"   " Run last command executed by VimuxRunCommand
			map <C-R>vl :VimuxRunLastCommand<CR>
			"
			"     " Inspect runner pane
			map <C-R>vi :VimuxInspectRunner<CR>
			"
			"       " Close vim tmux runner opened by VimuxRunCommand
			map <C-R>vq :VimuxCloseRunner<CR>
			"
			"         " Interrupt any command running in the runner pane
			map <C-R>vx :VimuxInterruptRunner<CR>
			"
			"           " Zoom the runner pane (use <bind-key> z to restore runner pane)
			map <C-R>vz :call VimuxZoomRunner()<CR>

			map <C-t><up> :tabr<cr>
	map <C-t><down> :tabl<cr>
	map <C-t><left> :tabp<cr>
	map <C-t><right> :tabn<cr>
	Plugin 'christoomey/vim-tmux-navigator'
	"
	" " If you want :UltiSnipsEdit to split your window.
	" let g:UltiSnipsEditSplit="vertical"Plugin 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
	Plugin 'honza/vim-snippets'
	Plugin 'itchyny/lightline.vim'

	" Plugin 'artur-shaik/vim-javacomplete2'
	set guifont=Menlo\ for\ Powerline
	" let Vundle manage Vundle, required"
	Plugin 'alvan/vim-php-manual'
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'fatih/vim-go'
	Plugin 'scrooloose/nerdtree'
	Plugin 'scrooloose/syntastic'
	Plugin 'tpope/vim-rails'
	Plugin 'sheerun/vim-polyglot'
	Plugin 'chriskempson/tomorrow-theme'
	Plugin 'easymotion/vim-easymotion'
	Plugin 'benmills/vimux'
	Plugin 'tpope/vim-fugitive' " the ultimate git helper
	Plugin 'tpope/vim-commentary' 
	call vundle#end()            " required
	filetype plugin indent on    " required	

	set mouse=a        " Enable mouse support in console

	filetype on
	filetype plugin on
	filetype indent on
	syntax enable
	" syntax on
	" color dracula
	set grepprg=grep\ -nH\ $*

	"Go Lint
	set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

	"added multiple search
function! SearchMultiLine(bang, ...)
	if a:0 > 0
	let sep = (a:bang) ? '\_W\+' : '\_s\+'
let @/ = join(a:000, sep)
	endif
	endfunction
	command! -bang -nargs=* -complete=tag S call SearchMultiLine(<bang>0, <f-args>)|normal! /<C-R>/<CR>


	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>


	set showcmd      " Shows what you are typing as a command
	set nocompatible " Necessary for lots for cool vim things
	set ruler        " Always show current positions along the bottom
	set nu           " Set linenumber
	set ai           " Auto indent
	set si           " Smart indet
	set wrap         " Wrap lines
	syntax on
	" color Crystallite
	" colorscheme base16-default-dark 
