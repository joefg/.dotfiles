# nvim

My neovim config is intended to be halfway house between an editor and an IDE.
If you want an IDE, just use VSCode. Otherwise, this works reasonably well.

## Plugins

Plugins are managed with [lazy.nvim](https://github.com/folke/lazy.nvim), inside
`init.lua`.

## Language Servers

`nvim` has support for language servers, and by default it's enabled here.
Present LSPs are:

* deno

* TypeScript (has one built in)

* JavaScript (eslint)

* Python (pyright)

* Lua (luals)

## Linting and Formatting

I use [luals](https://luals.github.io/) in neovim as a sort-of linter, and to
keep things neat I use [StyLua](https://github.com/JohnnyMorganz/StyLua) to
format the code.
