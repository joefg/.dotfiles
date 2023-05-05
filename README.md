# .dotfiles

## Installation and use

To download, run `git clone https://github.com/joefg/.dotfiles.git` in your home directory.

I'm using [GNU Stow](https://www.gnu.org/software/stow/) to manage symbolic links from this dotfiles
repository to their locations in your home directory.

To install each config, run `stow $CONFIG` from this repository.

### Local configuration

I would avoid keeping everything on `main`.

Instead, when you clone this repository, checkout to a new branch and use that,
rebasing from `main` as often as you can, resolving conflicts locally rather than
resolving them globally.

### Terminal Fonts

I use [Nerd Fonts](https://www.nerdfonts.com/) to give additional icons in the terminal.
This is mostly used in `nvim` with `lualine`, which is clever enough to disable it if it can't
detect any patched fonts available. The font I currently use is `UbuntuMono Nerd Font`, available in
the AUR or from the Nerd Fonts website.

### Linters

I use `pyright`, `eslint`, `deno`, and `typescript-language-server` to lint my code.
The configs in `nvim/.config/nvim/lua/lsp.lua` have these configured, but they'll error on
startup if you don't have them installed.

### Completion

Completion is powered by [nvim-cmp](https://github.com/hrsh7th/nvim-cmp), with suggestions
from defaults and from the LSP of your choice.
