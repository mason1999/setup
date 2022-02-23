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

The next three sections just show the general structure to the configuration files, covering options, keymaps, plugins and colorschemes. You could essentially just clone the neovim repository down and achieve everything there but feel free to give it a read. 

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

Remember to require it in `init.lua`

## Packer
The packer commands available to us are: 

    :PackerStatus - shows us all our plugins
    :PackerUpdate - updates our plugins
    :PackerSync - update and compiles a file that packer uses to make things faster for us. 
    :PackerInstall - installs the plugins you just wrote

# Installing nerdfonts
On the mac it's quit easy. Just do 

    brew tap homebrew/cask-fonts
    brew install --cask font-hack-nerd-font

Afterwards, go to `iterm2` $\implies$ `preferences` $\implies$ `profiles` $\implies$ `text` $\implies$ `font` $\implies$ `hack nerd font`

# completion
To add on completion, you basically need to `use` the following plugins into your `plugins.lua` file:


    -- completion plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- The completion plugin
    use "hrsh7th/cmp-path" -- The completion plugin
    use "hrsh7th/cmp-cmdline" -- The completion plugin
    use "saadparwaiz1/cmp_luasnip" -- snippet completions

    -- snippets
    use "L3MON4D3/LuaSnip" -- snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

And then just copy the `cmp.lua` file. Require it in `init.lua`


# LSP 
## Usage
LspInstallInfo

- search for what you want and then press `i` to install it. To update a served go to **Installed servers** and then press `u`. Finally if you want to remove an **Installed server** press capital `X`

LspInfo

- Tells you which language server is running in the background and attached in the buffer. 
 
# Telescope
The command

    :Telescope <tab>

A very simple example is: 

    :Telescope planets

Will tell you all the options you have. Some useful ones include:

- `:Telescope find_files`: a fuzzy finder for files 
- `:Telescope live_grep`: this finds phrases
- `:Telescop lsp_definitions`: The same as if you pressed `gd` (go to definition) but more of a macro view
- `:Telescope lsp_references`: The same as if you pressed `gr` (go to references) but more of a macro view. 
- `:Telescope git_branches`: Brings up your git log and allows you to easily pick a branch to checkout

Note that you can also change the **theme**. For example: 

    Telescope find_files theme=ivy # opens up menu at the bottom
    Telescope find_files theme=dropdown # opens up menu as a dropdown
    Telescope find_files theme=cursor # not as useful for most people...

The default keybindings we have are: 

- `<leader>f` : file finder without the preview
- `<ctrl>t` : phrase searcher 

# Buffers

The plugin exposes 2 vim commands, `BDelete` and `BWipeout`. Each takes a single argument listed under the options section. To force a deletion, simply append the command with a bang.

    :BDelete! hidden
    :BDelete nameless
    :BDelete this
    :BDelete 1
    :BDelete regex='.*[.].md'

    :BWipeout! all
    :BWipeout other
    :BWipeout hidden glob=*.lua

The options are given below:

- `hidden` : Delete all listed buffers that's not visible in the current window
- `nameless` : Delete all listed buffers without name
- `this` : Delete the current focused buffer without changing the window layout
- `all` : Delete all listed buffers
- `other` : Delete all listed buffers except the current focused buffer

# Gitsigns
To see the options. For example `blameline`

    :Gitsigns [tab] 
