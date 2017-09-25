#!/usr/bin/env bash

if [[ ":$PATH:" != *":$HOME/.rvm/bin:"* ]]; then
	echo "Adding $HOME/.rvm/bin"
	export PATH="$PATH:$HOME/.rvm/bin"
fi

bundle exec jekyll serve

