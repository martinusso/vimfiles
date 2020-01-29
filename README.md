# vimfiles

## dependencies

- [neovim](https://github.com/neovim/neovim) or `gvim` (instead of `vim`)
- https://github.com/Valloric/YouCompleteMe
- https://github.com/ggreer/the_silver_searcher

## install

go to your HOME:

```
cd ~
```

### neovim

```
git clone git@github.com:martinusso/vimfiles.git {$HOME}/.config/nvim
nvim +PlugInstall
```

Or open neovim/vim editor and type `:PlugInstall`

### vim

```
git clone git@github.com:martinusso/vimfiles.git {$HOME}/.vim
echo "source ${HOME}/.vim/init.vim" > ${HOME}/.vimrc
vim +PlugInstall
```
