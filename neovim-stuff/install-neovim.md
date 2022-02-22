# Prerequisites 
Make sure you have homebrew installed on your mac

# Installing neovim 
	brew install neovim

- Note that it doesnt replace your vim out of the bat. 

- You can see this if you type in ```vim``` $\implies$ you actually go to vim

- To use neovim use the command ```nvim```$\implies$ you actually go to neovim
# alias and exporting the editor
	nvim ~/.zshrc <-- Then type in 
	alias vim='nvim'
	export EDITOR='nvim'

The next two sections just show the general structure to the configuration files, covering options, keymaps, plugins and colorschemes. You could essentially just clone the neovim repository down and achieve everything there but feel free to give it a read. 

# Configuration file for neovim
Go to a neovim file and type in 

	:help vimrc
This will show you **what** the configuration file should be called. In old vim it was called ```.vimrc``` located at ```~/.vimrc```. In neovim it will be called `init`. So either it is an `init.vim` file or an `init.lua` file located inside the directory `~/.config/nvim/`. We will need to recursively create the directories for the config file. 

    mkdir -p ~/.config/nvim
    cd ~/.config/nvim
    touch init.lua

# lua directory, namespace mason with our configuration modularised
Next what we do is we make a directory called lua, with another directory (can be called anything) called mason inside of it

    cd ~/.config/nvim
    mkdir -p ./lua/mason

Then create various modularised to do with: 
1. options
2. keymaps
3. plugins
4. colorschemes

The code is given by: 

  touch ~/.config/nvim/lua/mason/options.lua
  touch ~/.config/nvim/lua/mason/keymaps.lua
  touch ~/.config/nvim/lua/mason/plugins.lua
  touch ~/.config/nvim/lua/mason/colorschemes.lua

Then create the directory for the compiled packer lua file. This file just speeds up the execution of neovim 

      cd ~/.config/nvim
      mkdir plugin
      cd ~/.config/nvim/plugin
      touch packer_compiled.lua



