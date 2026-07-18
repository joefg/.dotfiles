# .dotfiles

## Installation and use

To download, run `git clone https://github.com/joefg/.dotfiles.git` in your
home directory.

I'm using [GNU Stow](https://www.gnu.org/software/stow/) to manage symbolic
links from this dotfiles repository to their locations in the home directory.

To install each config, run `stow <config>` from this repository.

## Brew

This uses [homebrew](https://brew.sh) to install developer
tools. A `brew bundle` is sufficient to install what
is required here. This includes fonts for nvim and tmux.

### Windows

If you're on WSL, you shouldn't have any issue with these instructions, because
WSL is a full Linux.

If you're not (and using Git for Windows or MinGW32), you have several problems:

1. No `bash`. You can download [Git for Windows](https://gitforwindows.org/) to
   get a `bash`, but you won't have `stow`, and you won't be able to install
   Linux-specific packages. You may have some success with
   [WinGet](https://learn.microsoft.com/en-gb/windows/package-manager/) though.

2. Using the XDG Home Path (`~/.config/<application-name>` etc) might not be an
   option either. I know `neovim` keeps configurations in `~/AppData/Local/nvim`
   on Windows.

3. Symlinks likely won't work either, because Windows doesn't allow symbolic
   links for non-Administrator users.

These dotfiles should still work, but *caveat emptor*. Keep your changes on a
local feature branch.
