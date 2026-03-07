#!/data/data/com.termux/files/usr/bin/sh

cat << EOF
          _               
 ___  ___| |_ _   _ _ __  
/ __|/ _ \ __| | | | '_ \ 
\__ \  __/ |_| |_| | |_) |
|___/\___|\__|\__,_| .__/ 
                   |_|    

EOF

pkg in termux-api stow zsh fzf starship figlet eza zoxide bat -y
cd ~/.dots
stow --ignore=.assets --ignore=readme.md --ignore=install.sh .
chsh -s zsh
figlet "fsociety" > $PREFIX/etc/motd
