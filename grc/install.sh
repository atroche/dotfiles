has_grc() { [[ -x `which grc` ]] }
if ! has_grc; then 
  brew install grc
fi
