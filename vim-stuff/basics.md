# Table of Contents
1. [Syntax of the language](#1)
2. [Commands are repeatable and undoable](#2)
3. [Verbs in vim ](#3)
4. [Nouns in vim -- motions ](#4)
5. [Nouns in vim -- Text objects](#5)
6. [Nouns in vim -- parametrized text objects](#6)
7. [Tips for mastering the vim language](#7)

	7.1 [The "." command](#7.1)

	7.2 [Relative number](#7.2)

	7.3 [Visual mode is a smell](#7.3)

8. [Custom operators](#8)

	8.1 [Surround](#8.1)

	8.2 [Commentary](#8.2)

	8.3 [ReplaceWithRegister](#8.3)

9. [Custom Text Objects (Nouns)](#9)

	9.1 [Indent](#9.1)

	9.2 [Entire](#9.2)

	9.3 [Line](#9.3)

10. [Getting help](#10)

# Syntax of the language <a name="1"></a>
- verb + noun
- ex: "dw" stands for "delete word"
- cons: You have to be at the front of the word for it to "really" work

# Commands are repeatable and undoable <a name="2"></a>
- To repeat the last change you did (so verb + noun) you can use the "." command
- To undo something use the "u" command

# Verbs in vim <a name="3"></a>
- d: delete
- c: change (delete and enter into insert mode)
- $>$: indent 
- v: visually select
- y: yank (copy)
- p: put (paste)

# Nouns in vim -- motions <a name="4"></a>
- i, j, k, l: standard motions
- w: forward by (start of) word
- e: forward by (end of) word
- b: backward by (start of) word
- can stack numbers with motions: "3j, 2k, 2w, 8b" etc. 

# Nouns in vim -- Text objects <a name="5"></a>
- Suppose you wanted to edit a word but you're in the *middle* of it...
- Operate from *anywhere* within a  *defined body of text*
- iw: inner word (works from anywhere within a word)
- it: inner tag (the contents of a HTML tag)
- i": inner quotes
- ip: inner paragraph
- as: a sentence

# Nouns in vim -- parametrized text objects <a name="6"></a>
- text objects alone are not "complete"... they require you to input "something"
- f, F: "find" the next character (forward and backwards)
- t, T: "find" the next character *till* the one you enter (forward and backwards)
- / : search (up to the next match)

# Tips for mastering the vim language <a name="7"></a>
## The "." command <a name="7.1"></a>
- Use the more general text object (iw rather than w *even if* at the beginning of a word)
- Prefer text objects to motions where possible 
- Repeat.vim for plugin repeating. 
## Relative number <a name="7.2"></a>
- It's awesome
## visual mode is a smell <a name="7.3"></a>
- A smell is an indication in programming that something may **not** be right and that there might be a better way. 
- Don't use two sentences where one will do 
- ex: viw --> c --> hello --> go to new word --> **doesn't repeat properly** --> should've just used ciw. This breaks repeatability

# Custom operators (verbs) <a name="8"></a>
- The following all act as the "verb" in the vim command that allow you to do something **neat**. 
- These are all plugins that should be installed. 
## Surround <a name="8.1"></a>
cs"' in

	"Hello world"

To change it to 

	'Hello world'

Now type `cs'<q>` to change it to 

	<q> Hello world </q>

To go full circle `cst"` to change it back to 

	"Hello world"

To remove the delimeters type `ds"`

	Hello world

Now with the cursor on "Hello", press `ysiw]` (`iw` is a text object).

	[Hello] world!

Let's make that braces and add some space (use `}` instead of `{` for no space): `cs[}`

	{ Hello } world!

Now wrap the entire line in parentheses with `yssb` or `yss)`.

	({ Hello } world!)

Revert to the original text: `ds{ds)`

	Hello world!

Emphasize hello: `ysiw<em>`

	<em>Hello</em> world!

Finally, let's try out visual mode. Press a capital V (for linewise visual mode) followed by `S<p class="important">`.

	<p class="important">
	<em>Hello</em> world!
	</p>

## Commentary <a name="8.1"></a>

The verb is: 

	gc

Actual commands combine this with motions

Comment a line out

	gcl

Comment down 2 lines

	gc2j

Comment up 4 lines

	gc2k

## ReplaceWithRegister <a name="8.2"></a>


# Custom text objects (nouns) <a name="9"></a>
## Indent <a name="9.1"></a>
For "inner indent" the text object is "ii" so the following command comments the inner indent

	gcii
## entire <a name="9.2"></a>
For the "entire document"

	gcie

or 

	gcae
## line <a name="9.3"></a>
To operate on an ektire line (e.g "change inner line")

	cil

# Getting help <a name="10"></a>
To get help in vim 
		
	:h or :help
## Jumping to a tag <a name="10.1"></a>
To jump to a tag press 

	<Ctrl-[>

To jump back press

	<Ctrl-o>
