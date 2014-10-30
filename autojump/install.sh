has_autojump() { [[ -x `which autojump` ]] }
echo "Installing autojump, if you don't have it already"

if ! has_autojump; then 
  git clone git://github.com/joelthelion/autojump.git /tmp/autojump-install
  cd /tmp/autojump-install
  ./install.py
fi

