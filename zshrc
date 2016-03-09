# Path to your oh-my-zsh installation.
export ZSH=/Users/rafael/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/usr/local/opt/go/libexec/bin:/Users/rafael/code/go/bin"
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Aliases

g=git

ga='git add'
gaa='git add --all'
gapa='git add --patch'

gc='git commit -v'
gca='git commit -v -a'
gcam='git commit -a -m'
gcmsg='git commit -m'

gcb='git checkout -b'
gco='git checkout'

gr='git remote'
gra='git remote add'

gsb='git status -sb'
gst='git status'

ggpush='git push origin $(git_current_branch)'
gp='git push'
gpu='git push upstream'
gpv='git push -v'

ggpull='git pull origin $(git_current_branch)'
gl='git pull'
gup='git pull --rebase'
gupv='git pull --rebase -v'

gb='git branch'
gm='git merge'
grb='git rebase'

gclean='git clean -fd'
gpristine='git reset --hard && git clean -dfx'
grh='git reset HEAD'
grhh='git reset HEAD --hard'

gsta='git stash'
gstaa='git stash apply'
gstd='git stash drop'
gstl='git stash list'
gstp='git stash pop'
gsts='git stash show --text'

gd='git diff'
gdca='git diff --cached'
gdw='git diff --word-diff'

glg='git log --graph --color'
glog='git log --oneline --decorate --color --graph'
glola='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'

gsps='git show --pretty=short --show-signature'
gwch='git whatchanged -p --abbrev-commit --pretty=medium'

