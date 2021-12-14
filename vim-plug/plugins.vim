if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better looking popup windows
    Plug 'stevearc/dressing.nvim'

    " Themes
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'shaunsingh/moonlight.nvim'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'catppuccin/nvim'

    " Whick-key 
    Plug 'folke/which-key.nvim'

    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'


    " Icon support
    Plug 'kyazdani42/nvim-web-devicons'

    " file tree explorer
    Plug 'kyazdani42/nvim-tree.lua'

    " Commenter
    Plug 'numToStr/Comment.nvim'

    " Autopairs
    Plug 'windwp/nvim-autopairs'

    " Surround
    Plug 'blackcauldron7/surround.nvim'

    " Completion
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'tami5/lspsaga.nvim'
    Plug 'onsails/lspkind-nvim'

    " Snippets
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Floating Terminal
    Plug 'numToStr/FTerm.nvim'

    " Lua Line
    Plug 'nvim-lualine/lualine.nvim'

    " Tabs
    Plug 'romgrk/barbar.nvim'
call plug#end()
