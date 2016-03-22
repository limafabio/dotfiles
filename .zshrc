# Path to your oh-my-zsh installation.
export ZSH=/Users/rafael/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

export GOPATH=$HOME
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/usr/local/opt/go/libexec/bin:$GOPATH/bin"
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/id_rsa"

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

[ -f ~/.aliases.sh ] && source ~/.aliases.sh
[ -f ~/.extras.sh ] && source ~/.extras.sh

# Load travis.sh
[ -f /Users/rafael/.travis/travis.sh ] && source /Users/rafael/.travis/travis.sh
