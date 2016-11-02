# keepcursor.vim

Keeps cursor position when leaving insert mode.

## Installation

### Vundle

Place this in your `.vimrc`:

    Plugin 'dbestevez/keepcursor.vim'

...then run the following in Vim:

    :source %
    :PluginInstall

### NeoBundle

Place this in your .vimrc:

    NeoBundle 'dbestevez/keepcursor.vim'

...then run the following in Vim:

    :source %
    :NeoBundleInstall

### VimPlug

Place this in your `.vimrc`:

    Plug 'dbestevez/keepcursor.vim'

...then run the following in Vim:

    :source %
    :PlugInstall

### Pathogen

Run the following in a terminal:

    cd ~/.vim/bundle
    git clone git://github.com/dbestevez/keepcursor.vim.git

## Conflicts with vim-multiple-cursors

[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) will not work properly when keepcursor.vim is enabled.

If you are using keepcursor.vim + vim-multiple-cursors add this to your .vimrc:

    function! Multiple_cursors_before()
        call keepcursor#disable()
    endfunction

    function! Multiple_cursors_after()
        call keepcursor#enable()
    endfunction
