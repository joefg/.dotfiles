# .dotfiles

## Installation and use

To download, run `git clone https://github.com/joefg/.dotfiles.git` in your
home directory.

I'm using [GNU Stow](https://www.gnu.org/software/stow/) to manage symbolic
links from this dotfiles repository to their locations in the home directory.

To install each config, run `stow <config>` from this repository.

### Terminal Fonts

The terminal emulator I use, [ghostty](http://ghostty.org/), handles a font
and colour schemes for you. If you're not using that, download a
[Nerd Font](https://www.nerdfonts.com/) to give additional icons in the
terminal. This is used in `nvim` and `tmux` to provide separation between
elements in status bars. I like either the JetBrains font or Ubuntu Mono.

Note that [Starship](https://starship.rs) also requires a Nerd Font. If you
don't want a Nerd Font, don't install Starship, and you can have a simpler
bash prompt.

On environments where this font is not installed, there are options in both the
`nvim` and `tmux` configurations which can use other symbols in place of these
icons.

### Configuration scripts

In cases where writing to a dotfile is discouraged, some applications have a
stable API with which configuration changes can be made. These can be found in
`./setup/`.

#### Git

Git offers a configuration API: `git config`. This is encouraged, as there can
be many different machine-level differences in configuration. Have a look at
`setup/git-config.sh` for examples.

#### VSCode

In lieu of a proper managed extensions file, there is a script to install VSCode
plugins in `setup/vscode-plugins.sh`. The rest of the VSCode config is to be
handled on a per-machine basis.

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
