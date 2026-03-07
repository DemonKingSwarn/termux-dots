# Termux Dots

These are the config files for my termux environment.

![](./.assets/showcase.png)

## installation

Make sure to have [termux:api](https://f-droid.org/packages/com.termux.api/) installed.

```sh
git clone https://github.com/DemonKingSwarn/termux-dots ~/.dots
pkg in termux-api stow zsh fzf starship figlet eza zoxide bat -y
cd ~/.dots
stow --ignore=.assets --ignore=readme.md .
chsh -s zsh
figlet "fsociety" > $PREFIX/etc/motd
```
