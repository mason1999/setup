## Prerequisites 
Make sure you have homebrew installed on your mac

## Installing neovim 
	brew install neovim

- Note that it doesnt replace your vim out of the bat. 

- You can see this if you type in ```vim``` $\implies$ you actually go to vim

- To use neovim use the command ```nvim```$\implies$ you actually go to neovim
## alias and exporting the editor
	nvim ~/.zshrc <-- Then type in 
	alias vim='nvim'
	export EDITOR='nvim'

## Configuration file for neovim
Go to a neovim file and type in 

	:help vimrc
This will show you **what** the configuration file should be called. In old vim it was called ```.vimrc``` located at ```~/.vimrc```. In neovim it will be called ```init.vim``` located at ```~/.config/nvim/init.vim```. We will need to recursively create the directories for the config file. 

	mkdir -p ~/.config/nvim
	cd ~/.config/nvim
	vim init.vim # save this file. 
	touch init.vim # OR THIS ONE. DON'T USE BOTH. This just creates the file. 

## Installing a plug manager for vim 
Click on the following [link](https://github.com/junegunn/vim-plug) and get ready to copy a command\

We now assume we're in the path ```~/.config/nvim```. We not create the ```autoload``` folder and change our current directory into it

	mkdir autoload
	cd autoload

You can find the following command on the website, but we need to modify it by only taking the website link:
	
	curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

Note that this will only print the plugin managers vimscript to ```stdout```. However, we want to write the output to a file called ```plug.vim```. Remember we're still in ```~/.config/nvim/autoload```

	curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o plug.vim

## The first settings we put in our init.vim file

	" Don't be compatible with vi or vim
	set nocompatible
	" We're gonna turn filetype off BEFORE we load allota plugins
	filetype off
	" We call the plugin manager straight away. The following argument is the path to the plugins
	call plug#begin('~/.config/nvim/plugged')

	call plug#end()

continue to the ```~/.config/nvim/init.vim``` file. 

## using the plugin manager
In between the 
	
	call plug#begin('~/.config/nvim/plugged')
		# Put your plugins here. e.g Plug 'morhetz/plugged'
	call plug#end()
After that use the commands
	
	:wq
	vim init.vim
	:Pluginstall

After that you can use the new plugin
