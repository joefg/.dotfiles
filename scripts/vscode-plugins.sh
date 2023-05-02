#!/usr/bin/env bash

PLUGINS=(
	'vscodevim.vim'
	'ms-vscode.theme-tomorrowkit'
)

for PLUGIN in "${PLUGINS[@]}"; do
	code --install-extension $PLUGIN
done;
