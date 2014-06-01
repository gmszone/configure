

case $1 in 

  basic)

    echo -e "\033[Install bash-it\033[0m" 
    git clone https://github.com/revans/bash-it .bash_it
    sh ~/.bash_it/install.sh

    echo -e "\033[Install janus\033[0m"
    curl -Lo- https://bit.ly/janus-bootstrap | bash
    ;;

  more)		echo -e "\033[Install purcell emacs configure\033[0m"
    git clone https://github.com/purcell/emacs.d .emacs.d
    emacs

    echo -e "\033[Install zsh configure\033[0m"
    git clone https://github.com/robbyrussell/oh-my-zsh.git

    ;;
  chruby)
    echo -e "\033[Install RVM\033[0m"
    \curl -sSL https://get.rvm.io | bash -s stable

    sudo gem install rake

    wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
    tar -xzvf chruby-0.3.8.tar.gz
    cd chruby-0.3.8/
    sudo make install
    ;;
  drush)
    sed -i '1i export PATH="$HOME/.composer/vendor/bin:$PATH"' $HOME/.bashrc
    source $HOME/.bashrc
    composer global require drush/drush:dev-master
    ;;
  py)
    sudo pip install argcomplete
    sudo pip install mezzanine
    sudo pip install pyserial
    ;;
  ubuntu)
    sudo apt-get install curl
    ;;
  *) 
    echo -e "\034[System Init Configure\033[0m"
    echo -e "\034[Usage:{basic|more}\033[0m"
    ;;
esac
