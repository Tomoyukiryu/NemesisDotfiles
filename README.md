
## Steps to bootstrap a new Arch Linux

1. Clone repo into new hidden directory.

```bash
# Use SSH (if set up)...
git clone git@github.com:Tomoyukiryu/NemesisDotfiles.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/Tomoyukiryu/NemesisDotfiles.git ~/.dotfiles
```


2. Create symlinks in the Home directory to the real files in the repo.

```bash
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```


3. Install yay, followed by the software listed in the packages.txt.

```bash
# These could also be in an install script.
# Install prerequisite packages from pacman
pacman -S --needed git base-devel
# Pull yay 
/bin/bash -c "$(git clone https://aur.archlinux.org/yay.git)"

#Move to yay directory
cd ~/yay

#Make package from yay
makepkg -si

#First use commands
yay -Y --gendb
yay -Syu --devel
yay -Y --devel --save

#move to .dotfiles directory
cd ~/.dotfiles

# Then pass in the packages.txt location...
yay -S ~/.dotfiles/packages.txt
```


## TODO List
- Organize these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot).
- Revisit the list in [`.bashrc`](.bashrc) to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Make a checklist of steps to decommission your computer before wiping your hard drive.
- Create a [bootable USB installer for Arch Linux](https://wiki.archlinux.org/title/Installation_guide).
- Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
- Find inspiration and examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io/).

