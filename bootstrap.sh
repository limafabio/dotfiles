#!/usr/bin/env zsh

git pull origin master;

function bootstrap() {
  rsync \
    --exclude ".DS_Store" \
    --exclude ".git/" \
    --exclude "LICENSE" \
    --exclude "README.md" \
    --exclude "bootstrap.sh" \
    --exclude "brew.sh" \
    -avh --no-perms . ~;
  source ~/.zshrc
}
bootstrap;
unset bootstrap;
