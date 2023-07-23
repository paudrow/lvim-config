# README

This repository sets up [Neovim](https://neovim.io/) with the excellent and opinionated [LunarVim](https://www.lunarvim.org/).

## Setup

- Install Neovim 0.9.0
    - On Mac, you can use [Homebrew](https://brew.sh/)
    - On Linux, building from source using the `release-0.9` is probably the best option
- Follow the [LunarVim installation instructions](https://www.lunarvim.org/docs/installation)
- For icons, install a compatable NerdFont
    - For example:
        ```bash
        mkdir -p ~/.local/share/fonts
        cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
        ```
    - Then run `fc-cache -f -v`
        - On Mac you may have to `brew install fontconfig` first
    - Set your terminal's editor to use the font
- Clone this directory
    ```bash
    git clone https://github.com/paudrow/lvim-config ~/.config/lvim
    ```
- Launch `lvim`
    - You may have to set the path to the install location
    - You have to use a terminal with rich color support for things to look correct
        - On Mac, iTerm works, but Terminal does not.
    - Download plugins: `:Lazy sync`
    - Setup GitHub Copilot: `:Copilot setup`

## Usage

- The leader key is the spacebar
    - Whichkey popup shows you options from there
    - Highlights
        - `<leader>gg` opens [Lazygit](https://github.com/jesseduffield/lazygit)
        - `<leader>u` opens [Undotree](https://github.com/mbbill/undotree)
        - `<leader>e` opens a file explorer
            - `g?` opens help
        - `<leader>f` for a file fuzzy search
        - `<leader><leader>` to toggle folds
- Other keyboard shortcuts
    - `<C-space>` to toggle completions
        - Note on Mac, you may have to disable switching the keyboard input
    - `K` in normal mode to explore documentation
        - Press `K` again to navigate to the floating window
    - `<C-\>` to toggle a terminal
    - `<C-CR>` to open a Github Copilot panel
    - In visual mode, `<C-n>` to enter multi cursor
        - `n/p` to go to the next/previous
        - `q` to skip; `Q` to deselect
    - In normal mode, use ctrl with up or down to make multiple cursors
    - Harpoon: quick file switcher
        - View with `<C-e>`
        - Add with `<leader>a`
        - Switch with `C-h/t/n/s>`
- Plugins are managed by [Lazy](https://github.com/folke/lazy.nvim)
- Autocomplete is done by LSPs which are handled by [Mason](https://github.com/williamboman/mason.nvim)

## Rationale

### Why Neovim instead of VS Code?

On large Rust projects, I was experiencing significant slowdowns with the LSP, making the project almost unworkable.
With Neovim, the performance is notably better.

Also, [Undotree](https://github.com/mbbill/undotree) is pretty great and I don't see anything similar in VS Code.

### Why LunarVim instead of vanilla Neovim?

Neovim seems great, but I don't have the time to finagle with all of the options.
I tried setting up LSPs, debugging, and Copilot. It was challenging to get things working.
LunarVim comes with most of the core things setup. After that, it's just personalizing.

