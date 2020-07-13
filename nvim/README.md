### First of all install neovim
##
for Debian / Ubuntu
```sh
sudo apt install neovim
```
[For Arch Install](https://github.com/neovim/neovim/wiki/Installing-Neovim#arch-linux)
```sh  
sudo pacman -S neovim
```
### Before Use it, make sure that you have installed vim Plug Manager.

Follow this link [Vim Plug](https://github.com/junegunn/vim-plug#neovim)
* create folder ~/.vim/plugged
* copy paste init.vim file to ~/.config/nvim/ 
* carefull with python3 & python2 compatibility, maybe you will need this 
```sh
$ pip2 install pynvim
$ pip3 install pynvim
```
### For [colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
```sh 
$ git clone https://github.com/rafi/awesome-vim-colorschemes.git ~/.config/nvim/colors
$ mv ~/.config/nvim/colors/* ~/.config/nvim/
```
test if working with
eg.
* :colorscheme molokai 

* you will need the package ctags for tagbar plugin
* for Debian / Ubuntu
```sh
sudo apt install ctags
```
* for Arch / Manjaro
```sh  
sudo pacman -S ctags
```
### After installed packages
* Open init.vim
```sh
$ nvim ~/.config/nvim/init.vim
:source %
:PlugInstall
```
### Done
![alt text](https://github.com/Pr0xe/i3-Configs/blob/master/nvim/vimscreen.png)
