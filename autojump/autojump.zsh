jump() {
  cd `autojump $1`
}
alias j=jump

[[ -s /home/aroche/.autojump/etc/profile.d/autojump.sh ]] && source /home/aroche/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u
