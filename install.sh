#!/data/data/com.termux/files/usr/bin/sh

printf "%s\n" "setting up termux for you"

pkg in termux-api termux-services fastfetch stow openssh zsh fzf starship figlet eza zoxide bat -y > /dev/null

sv-enable sshd
sv start sshd

printf "%s\n" "applying dotfiles"

cd ~/.dots
stow --ignore=.assets --ignore=readme.md --ignore=install.sh .

printf "%s\n" "setting up zsh as default shell"

chsh -s zsh

printf "%s\n" "setting up custom motd"

figlet "fsociety" > $PREFIX/etc/motd

printf "%s\n" "please restart termux"
