# Path to your oh-my-zsh installation.
export ZSH=/Users/rafael/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/usr/local/opt/go/libexec/bin:/Users/rafael/code/go/bin"
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/id_rsa"

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# Aliases

g=git

alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'

alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -a -m'
alias gcmsg='git commit -m'

alias gcb='git checkout -b'
alias gco='git checkout'

alias gr='git remote'
alias gra='git remote add'

alias gs='git status'
alias gsb='git status -sb'

alias ggpush='git push origin $(git_current_branch)'
alias gp='git push'
alias gpu='git push upstream'
alias gpv='git push -v'

alias ggpull='git pull origin $(git_current_branch)'
alias gl='git pull'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'

alias gb='git branch'
alias gm='git merge'
alias grb='git rebase'

alias gclean='git clean -fd'
alias gpristine='git reset --hard && git clean -dfx'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

alias gsta='git stash'
alias gstaa='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'

alias gd='git diff'
alias gdca='git diff --cached'
alias gdw='git diff --word-diff'

alias glg='git log --graph --color'
alias glog='git log --oneline --decorate --color --graph'
alias glola='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'

alias gsps='git show --pretty=short --show-signature'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'

