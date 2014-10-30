#! /usr/bin/zsh

has_brew() { [[ -x `which brew` ]] }
is_mac() { [[ $OSTYPE == darwin* ]] }
is_freebsd() { [[ $OSTYPE == freebsd* ]] }
is_linux() { [[ $OSTYPE == linux-gnu ]] }

if ! has_brew; then
  echo "i don't have brew"
  if is_linux; then
    echo "i am linux"
    sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev && ruby -e "$(wget -O- https://raw.github.com/Homebrew/linuxbrew/go/install)"
  fi

  if is_mac; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi
