call plug#begin('~/.vim/plugged')

" nerdtree, ctrl+n
Plug 'scrooloose/nerdtree'
" nerdtree git support - shows git status of files/dirs
Plug 'Xuyuanp/nerdtree-git-plugin'
" fuzzy find
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" syntastic, see https://github.com/scrooloose/syntastic for recommended
" .vimrc additions
Plug 'scrooloose/syntastic'

" gitgutter - changed lines in git
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-emoji'

Plug 'pangloss/vim-javascript'

call plug#end()
" nerdtree
map <C-n> :NERDTreeToggle<CR>
map ; :
