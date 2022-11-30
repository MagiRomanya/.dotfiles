# Dotfiles repo
This repo is intended to store and mantain my dotfiles in an easy way using stow.
## How to use
### Restore system from dotfiles:
First we have to clone `.dotfiles` in our `$HOME` directory:
``` sh
git clone https://github.com/MagiRomanya/.dotfiles.git ~/
```
Next we have to run `install.sh` from the `.dotfiles` directory.
``` sh
cd .dotfiles
chmod +x install.sh
sudo ./install.sh
```
We have to use `sudo` if we want `install.sh` to install all the packages for us. (only in archlinux).
It is important to run `install.sh` from our `$HOME/.dotfiles` directory because of `stow`.

### Edit and add .dotfiles
To add the dotfiles from the package `foo` located in `$HOME/.config/foo/` to this repo, we have to follow the convention of `stow`.

First we create a folder with the name of the package in `$HOME/.dotfiles/`:
``` sh
mkdir ~/.dotfiles/foo
```
Inside of this folder we must create the same structure as if we were in the `$HOME` directory. To add a dotfile located in `$HOME/.config/foo/dotfile` we would have to move it like this:

``` sh
mkdir ~/.dotfile/foo/.config
mkdir ~/.dotfile/foo/.config/foo
mv ~/.config/foo/dotfile ~/.dotfiles/foo/.config/foo/
```
