
echo "clone bash-it" 
git clone https://github.com/revans/bash-it .bash_it
# sh ~/.bash_it/install.sh

echo "install janus"
# curl -Lo- https://bit.ly/janus-bootstrap | bash

echo "clone purcell emacs configure"
git clone https://github.com/purcell/emacs.d .emacs.d
emacs

echo "clone zsh configure"
git clone https://github.com/robbyrussell/oh-my-zsh.git