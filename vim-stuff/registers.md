# Table of Contents

1. [Register basics](#1)

	1.1 [To see all your registers](#1.1)

	1.2 [To see a particular register, say 'register a'](#1.2) 

	1.3 [To use a register the general idea is](#1.3)

	1.4 [To use a register, say 'register a' and yank something and paste something](#1.4)

	1.5 [The implicit register is the double quotes register ". To see what's in it](#1.5)

	1.6 [To paste the thing which is in your implicit register (Example)](#1.6)


2. [ReplaceWithRegister](#2)

	2.1 [Example](#2.1)

# Register basics <a name="1"></a>
## To see all your registers <a name="1.1"></a>
	:reg
## To see a particular register, say 'register a' <a name="1.2"></a>
	:reg a

## To use a register the general idea is: <a name="1.3"></a>
	"<register><action>

## To use a register, say 'register a' and yank something and paste something <a name="1.4"></a>
	"ay
	"ap
## The implicit register is the double quotes register ". To see what's in it: <a name="1.5"></a>
	""p
## to paste the thing which is in your implicit register (for example) <a name="1.6"></a>
	let mapleader = "," <--- In your vimrc
	thing_to_be_copied <--- yank this
	arry[123] <--- vi[ THEN ,p

# ReplaceWithRegister <a name="2"></a>
This is faster that doing "yiw" or "yil" THEN "vi",p" or "vi[,p" as we saw above
## example <a name="2.1"></a>
	"the phrase to be copied here" <--- yi"
	"dummy phrase" <-- gri"
	this line will be replaced by the whole phrase <--- gril
	this line will ALSO be replaced by the whole phrase <--- grr
	this line will be replaced by the contents of register a <--- "agril
