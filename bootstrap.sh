#!/usr/bin/env zsh

git pull origin master;

function bootstrap() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE" -avh --no-perms . ~;
	source ~/.zshrc
}
bootstrap;
unset bootstrap;
