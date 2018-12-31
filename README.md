# vimfiles

## install

go to your HOME:

cd ~

clone vimfiles repo

```
git clone git@github.com:martinusso/vimfiles.git
```

rename the dir `vimfiles` to `.vim`

mv vimfiles ~/.vim

link `vimrc` and `gvimrc` to yout home

```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

install plugins

```
vim +PlugInstall
```
