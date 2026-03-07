# Termux Dots

These are the config files for my termux environment.

![](./.assets/showcase.png)

## installation

```sh
git clone https://github.com/DemonKingSwarn/termux-dots ~/.dots
pkg in stow zsh fzf starship figlet eza zoxide bat
cd ~/.dots
stow --ignore=.assets --ignore=readme.md .
chsh -s zsh
figlet "fsociety" > $PREFIX/etc/motd
```
