### First of all
##
for Debian / Ubuntu
```sh
sudo apt install neovim
```
for Arch / Manjaro
```sh  
sudo pacman -S neovim
```
### Before Use it, make sure that you have installed vim Plug Manager.
if not, follow this link [Vim Plug](https://github.com/junegunn/vim-plug)

* copy paste init.vim file to ~/.config/nvim/ 
* carefull with python3 & python2 compatibility, maybe you will need this 
```sh
$ pip2 install pynvim
$ pip3 install pynvim
```
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
![alt text](https://github.com/Pr0xe/i3-Configs/blob/master/neovim/nvim_setup.png)
