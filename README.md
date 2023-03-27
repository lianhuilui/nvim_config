# my personal nvim config folder

## Windows-specific instructions

* use a modern term like Windows Terminal (microsoft store)
* install c compiler (like gcc)
    * Choco `choco install mingw`
* install git
    * Choco `choco install git.install`
* install packer: https://github.com/wbthomason/packer.nvim#requirements
* enable developer mode in windows update
* follow instructions here: https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support
    * install llvm
    * require 'nvim-treesitter.install'.compilers = { "clang" }
* install and apply a nerd font
* clone this repo into AppData\Local\nvim
* set $HOME path
* run `:PackerSync`


note: I'm not sure if installing llvm and setting the compiler to clang solved uv_lopen problem or msvc build tools is also needed.

### Live Grep
* install ripgrep

### Astro LSP
* install MSVC build tools -> visual studio c++ desktop development

## Mac instructions

* clone this repo into ~/.config/nvim
* install packer: https://github.com/wbthomason/packer.nvim#requirements
* run `:PackerSync`
* install and apply a nerd font
* install ripgrep
