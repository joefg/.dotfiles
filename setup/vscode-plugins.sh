#!/usr/bin/env bash

PLUGINS=(
	'vscodevim.vim'
	'ms-vscode.theme-tomorrowkit'
	'editorconfig.EditorConfig'
	'ms-vscode-remote.remote-ssh'
)

for PLUGIN in "${PLUGINS[@]}"; do
	code --install-extension $PLUGIN
done;
