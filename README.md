# .dotfiles

## Installation and use

To download, run `git clone https://github.com/joefg/.dotfiles.git` in your
home directory.

I'm using [GNU Stow](https://www.gnu.org/software/stow/) to manage symbolic
links from this dotfiles repository to their locations in the home directory.

To install each config, run `stow <config>` from this repository.

### Terminal Fonts

I use [Nerd Fonts](https://www.nerdfonts.com/) to give additional icons in the
terminal. This is used in `nvim` and `tmux` to provide separation between
elements in status bars.

The font I currently use is `UbuntuMono Nerd Font`, available in the AUR or from
the Nerd Fonts website.

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
