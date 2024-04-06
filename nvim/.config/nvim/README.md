# nvim

My neovim config is intended to be halfway house between an editor and an IDE.
If you want an IDE, just use VSCode. Otherwise, this works reasonably well.

## Plugins

Plugins are kept as git submodules in `.local/share/nvim/site/pack/plugins/`.
See the the README in there for more details.

## Language Servers

`nvim` has support for language servers, and by default it's enabled here.
Present LSPs are:

* deno

* TypeScript (has one built in)

* JavaScript (eslint)

* Python (pyright)
