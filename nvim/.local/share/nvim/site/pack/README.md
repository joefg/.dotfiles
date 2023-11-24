# nvim plugins

This is managed by a combination of `git submodule` and `stow`.

submodules refresher: <https://git-scm.com/book/en/v2/Git-Tools-Submodules>

## Directories

Plugins in the `opt` directory aren't loaded on startup. To load these, you will
need to run `packadd` inside `vim`.

Plugins in the `start` directory are loaded and executed on startup. These
should not require a `packadd` to run them.

## How to add plugins

1. `git submodule <http://github.com/you/your-plugin.git>
   <opt|start>/<your-plugin>`

2. Check that it has loaded by running `vim`.

3. Commit!
