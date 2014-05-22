
echo -e "\033[Install bash-it\033[0m" 
git clone https://github.com/revans/bash-it .bash_it
sh ~/.bash_it/install.sh

echo -e "\033[Install janus\033[0m"
curl -Lo- https://bit.ly/janus-bootstrap | bash

echo -e "\033[Install purcell emacs configure\033[0m"
git clone https://github.com/purcell/emacs.d .emacs.d
emacs

echo -e "\033[Install zsh configure\033[0m"
git clone https://github.com/robbyrussell/oh-my-zsh.git

echo -e "\033[Install RVM\033[0m"
\curl -sSL https://get.rvm.io | bash -s stable