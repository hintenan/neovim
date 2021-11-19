if (has("nvim"))
    " ~/.local/share/nvim/plugged
    let g:plug_home = stdpath('data') . '/plugged'
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()

    " Make sure you use single quotes

    Plug 'sonph/onehalf', {'rtp': 'vim/'}
    "Plug 'nvim-telescope/telescope.nvim'
    "Plug 'ms-jpq/coq_nvim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    if (has("nvim"))
        Plug 'neovim/nvim-lspconfig'
    endif
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    " main one
    Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
    " 9000+ Snippets
    Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

    " lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
    " Need to **configure separately**

    Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
    " - shell repl
    " - nvim lua api
    " - scientific calculator
    " - comment banner
    " - etc

" Initialize plugin system
call plug#end()
