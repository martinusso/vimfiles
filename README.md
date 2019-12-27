# vimfiles

## dependencies

- install `gvim` instead of `vim`
- https://github.com/Valloric/YouCompleteMe
- https://github.com/ggreer/the_silver_searcher

## install

go to your HOME:

```
cd ~
```

clone vimfiles repo

```
git clone git@github.com:martinusso/vimfiles.git
```

rename the dir `vimfiles` to `.vim`

```
mv vimfiles .vim
```

link `vimrc` and `gvimrc` to yout home

```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

install plugins

```
vim +PlugInstall
```

Or open vim editor and type `:PlugInstall`
