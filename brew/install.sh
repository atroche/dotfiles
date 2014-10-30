echo "Installing brew if you don't have it already…"

if ! has_brew; then
  echo "you don't have brew!"
  if is_linux; then
    echo "you are on linux"
    sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev && ruby -e "$(wget -O- https://raw.github.com/Homebrew/linuxbrew/go/install)"
  fi

  if is_mac; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
else
  echo "you already have brew!"
fi
