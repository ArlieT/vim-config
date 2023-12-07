# My Neovim Configurations

This is how I like my Neovim configured.

## Requirements

##### General:
- [NodeJS](https://nodejs.org/en) (used by [`tsserver`](https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/tsserver.lua))

##### For Windows:
- [Chocolatey](https://chocolatey.org/install#individual)
- [MinGW](https://community.chocolatey.org/packages/mingw) (used by [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter#requirements))

##### For Linux:
Basically just the prerequisites from [Building Neovim](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)

- Clang or GCC version 4.9+
- CMake version 3.10+, built with TLS/SSL support
	- Optional: Get the latest CMake from an installer or the Python package (pip install cmake)

## Installation
1. Clone this repo to Neovim's config directory (refer to this [guide](https://neovim.io/doc/user/starting.html#vimrc) to identify the appropriate location)

For the next steps, you could do either:

## The Easy Way
2. Run `install.ps1` or `install.sh` depending on your OS
3. Wait for it to install.

Or

## Git Gud Way

[//]: # (add install guides for non-windows system)

2. Install Neovim
##### for Windows
```pwsh
winget install neovim
```

##### for Linux
Follow [this guide](https://github.com/neovim/neovim/wiki/Building-Neovim)

3. Install `packer-nvim` (refer to this [guide](https://github.com/wbthomason/packer.nvim#quickstart)) 
4. Check the `plugins.lua` first and make modifications (You may prefer additional/alternative plugins)
5. Run `nvim` and issue command `:PackerSync` to install the plugins (You may see errors from `/after/..` just ignore it for now).
6. Rerun `nvim` to install the LSPs and other sub-dependencies. 
