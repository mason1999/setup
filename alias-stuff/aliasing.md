## Create a new file for zsh aliases in ~/.zshrc
	if [ -e $HOME/.zsh_aliases ]; then
		source $HOME/.zsh_aliases
	fi
## General form of an alias 
	alias <name>='<command>'
## Source before you run the alias
	source ~/.zshrc
## Examples
	alias sort_by_file_size='du -sh * | sort -h'
	alias view_mounted_drives='mount | grep -E ^/dev | column -t'
	alias search_through_bash_history='history | grep'
	alias search_by_modification_time='ls -t -1'
	alias count_files='find . -type f | wc -l'

	# ve: creates a new directory called venv containg the usual environemtn filesystem for
	# Python3. The va alias activates the environment in the current shell. To test it just 
	# type "ve" then "va" (without the double quotes) in your terminal
	alias ve='python3 -m venv ./venv' 
	alias va='source ./venv/bin/activate'

	# ideas: simplify git workflow or chamge directories and view contents at the same time
