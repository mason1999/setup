# Table of contents
1. [Print() and concatenation](#1)
2. [Variable Types](#2)
3. [Using Strings](#3)
4. [Math library](#4)
5. [functions](#5)
6. [Variable scope](#6)
7. [String Library](#7)
8. [if-then, if-then else](#8)
9. [loops](#9)
10. [input and output](#10)

# Print() and concatentation <a name="1"></a>
To print a string: 
	
	print("Hello world")

The print function accepts more than one argument. it'll print them tab separated

	print("Hello", "my", "name", "is", "mason")

The print function will actually convert the number to a string (e.g ```string.tostring()```) and then print it:

	print(12)

We can also concatentate string with the ```..``` operator

	print("Hello" .. " " .. "world")

Comments are done with ```--``` or ```--[[ This is a block comment. It spans lines ]]```

# Variable types <a name = "2"></a>

You can use the `type()` function to get the type of a variable 

The 8 variable types in lua are: 

1. ```nil``` : has no value and holds no data. Set variable to nil to allow it to be collected by garbage collector

		myVar = nil
		print(type(myVar))
		
2. ```Number```  : Any numerica value. Lua stores numbers as double -- precision floating-point (i.e *real* numbers)

		myInt = 10
		print(myInt)
		print(type(myInt))

		myFloat = 3.14
		print(myFloat)
		print(type(myFloat))
3. ```String``` : A sequence of characters. Can use single or double quotes or even double brackets [[string]]

		myString = "Hello"
		print(myString)
		print(type(myString))

		myMultilineString = [[hello
		my name is 
		mason]]
		print(myMultilineString)
		print(type(myMultilineString))
4. ```Boolean``` : Stores true or false values. Any value that is not ```false``` is considered a ```true``` value

		myBoo = true
		myBoo2 = false
		myBoo3 = nil -- If used in an if-then statement then this will evaluate to false. 

		print(myBoo)
		print(type(myBoo))


		print(myBoo2)
		print(type(myBoo2))


		print(myBoo3)
		print(type(myBoo3))
5. ```Table``` : store associative arrays (i.e non-types arrays meaning you can put strings next to numbers etc.). Lua starts indexing from the value 1 and not 0. 

		myArray = {"a string", 12, 42, "14"}
		print(myArray) -- outputs a memory address

		print(myArray[1]) -- returns first object in array.
6. ```Function``` : Repeatable programming segments stored in a variable 
7. ```Userdata``` : Used to represent new data types
8. ```thread``` : Stores a co-routine instance (i.e multitask threading) 

# Using Strings <a name="3"></a>
To make strings, either use single quotes `'`, double quotes `"` or double brackets `[[my string]]` (for multiline strings). 
		
	myFirstString = 'Hi mom'
	mySecondString = "Hi dad"
	mythirdString = [[Hello children
	how do 
	you do?]]

We use the `#` symbol to get the length of a string as a number
	
	mystr = "Hello"
	print(#myStr)

We use `..` to concatenate strings

	myOtherStr = " world"
	print(mystr .. myOtherStr)

We can assign values respectively

	myA, myB, myC = "hi", "hello"
	print(myA) -- prints "hi"
	print(myB) -- prints "hello"
	print(myC) -- prints nil

Lua escape sequences:

- `\a` : bell
- `\b` : backspace
- `\f` : form feed
- `\n` : newline
- `\r` : carriage return
- `\t` : horizontal tab
- `\v` : vertical tab
- `\\` : backslash
- `\"` : double quote
- `\'` : single quote

		myNewLine = "This is a string\n\twith a\"newline\""
		print(myNewLine)


# Math library <a name="4"></a>
These include functions like: 
- `acos`
- `asin`
- `ceil`
- `cos`
- `deg`
- `exp`
- `floor`
- `huge`
- `log`
- `log10`
- `max`
- `min`
- `pi`
- `rad`
- `random`
- `randomseet`
- `sin`
- `tan`

		myPi = math.pi
		print(myPi)

		randomseed(os.time()) -- set a seed so that the random number is fixed. We use the os librayr here. 
		myNum = math.random() -- random number from 0 to 1
		myNum = math.random(1, 10) -- generate a number from 1 to 10

# Functions <a name = "5"></a>
Generally a function takes this form: 

	function name(parameters)
		code block
		return
	end
Where **parameters** and **returns** are optional. Examples include:

Simply printing hello world:

	function printHello()
		print("Hello world")
	end

returning a number and assigning it to a variable

	function addOne(num) 
		return (num + 1)
	end

	print(addOne(3))

Another way to make functions is also like this:

	addTwoNums = function() 
		result = 5 + 3
		return result
	end

	print(addTwoNums())
You can also return multiple values which don't have to be the same type:
	
	myFunc = function()
		result1 = 8
		result2 = "18"
		return result1, result2
	end

	-- We can then assign values like this:
	temp1, temp2 = myFunc()
	print(temp1)
	print(temp2)

# Variable scope <a name="6"></a>
- `global` : all variables are global unless specified with the `local` keyword
		
		temp = "hi" -- this is a global variable
		_G.temp2 = "HI" -- this is a global variable. no diffrence to temp. 
- `local` : only exists in certain scopes (if statments, loops etc.). You can use the `local` keyword for both variables and functions

		temp = "hi" -- global variable
		print(temp) -- will print out "hi"
		local test1 = function() -- this function is only available in this file
			local temp = "no longer hi"
			print(temp) -- will print out "no longer hi"
		end
		print(temp) -- will print out "hi" again. 

# String Library <a name="7"></a>
The `string` library includes different functions. These include:

- `byte`
- `char`
- `find`
- `format`
- `gmatch`
- `gsub`
- `len`
- `lower`
- `match`
- `rep`
- `sub`
- `upper`

To print out the **length** of a string use the `len` function or the `#` symbol
	
	local firstString = "hello world"
	print(string.len(firstString)) -- prints out 11
	print(#firstString) --  prints out 11

To replicate a string 5 times use the `rep` function

	local secondString = string.rep("hi ", 5)
	print(secondString) -- prints "hi hi hi hi hi "

To convert to capitals or lower case buse `lower` and `upper` functions

	local thirdString = "HELLO world"
	print(string.lower(thirdString)) -- prints "hello world"
	print(string.upper(thirdString)) -- prints "HELLO WORLD"

To find a substring of a string from character 1 to character 5 we use the `sub` function

	local subString = "Hello World"
	print(string.sub(subString, 1, 5)) -- gets the substring from char 1 to char 5 so "Hello"

To convert from an ascii number to a char use the `char` function
	
	print(string.char(97)) -- prints out an 'a'

To convert from a char to the ascii equivalent use the `byte` function. The first parameter is the string and the second parameter is the character number you want to convert. 
	
	print(string.byte("abc", 1)) -- prints out 97
	print(string.byte("abc", 1, 2)) -- prints out 97, 98

To format a string C style you can use the `format` function. I feel like this is a more general way to concatenate strings but you can still use the `..` operator. 

	print(string.format("hello world")) -- just prints out "hello world"
	
	-- example to work with concatenation and formatting
	local stringOne = "hello"
	local stringTwo = "world"
	local stringThree = string.format("%s %s, pi to 4 decimal places is: %.4f", stringOne, stringTwo, math.pi)
	print(stringThree)

	-- example of working with dates
	local day, month, year = 28, 2, 1980
	local stringFour = string.format("%02d/%02d/%04d", day, month, year)
	print(stringFour)


To find the indices where a substring occurs we use the `find` function. returns `nil` if we couldn't find such a substring. 

	local findString = "Mason Wong"
	local sBegin, sEnd = string.find(findString, "Wong")
	print(sBegin, sEnd) -- prints 7 and 10

To test whether a string actually has a substring we use the `match` function. returns the string if found, returns `nil` otherwise. 

	-- simple example
	local matchString = "Hello World"
	local found = string.match(matchString, "World")
	print(found)

	-- more useful example: regex and pulling out dates
	local data = "The date was 02/05/1999"
	local date = string.match(data, "%d+/%d+/%d+")

To substitute strings we use the `gsub` function

	local temp = "I have 2 children"
	local temp2 = string.gsub(temp, "children", "cats")
	print(temp2)


# if-then, if-then else,  <a name="8"></a>

The structure of the `if-then-end` is like:

	if (comparison) then
		(code)
	end

1. Every `if` needs a `then` and `end`. 
2. Every `elseif` needs a `then`. 
3. `else` doesn't need any of these. 

The comparison operators are: 
- `and`
- `or`
- `not`
- `>`
- `<` 
- `>=` 
- `<=` 
- `~=` 
- `==`

Here are some simple `if-then` structures

	local count = 0

	if (count == 1) then
		print("Equal if-then structure")
	end

	if (count <= 1) then
		print("Less than or equal if-then structure")
	end

	if (count >= 1) then
		print("Greater than or equal if-then structure")
	end

	if (count ~= 1) then
		print("Not equal if-then structure")
	end

Here are some simple uses of `and`, `or` and `not`

	local count = 1
	local answer = "yes"
	local lives = 0

	if count == 1 and answer == "yes" then
		print("if-then using and")
	end

	if count == 1 or answer == "no" then
		print("if-then using or")
	end

	if not (count == 0) then
		print("if-then using not")
	end

	if count == 1 and (answer  == "no" or lives == 0) then
		print("if-then complex comparison")
	end

An example of `if-then else`

	local count = 0 
	if count == 1 then 
		print("Equal if-then structure count = 1")
	else 
		print("if-then else, count ~= 1")
	end

The most general form of conditionals is like

	if (condition 1) then
		(code block)
	elseif (condition 2) then
		(code block)
	elseif (condition 3) then
		(code block)
	...
	else 
		(code block)
	end

For example:

	local count = 4

	if count == 0 then
		print("if-then count equals 0")
	elseif count == 1 then
		print("elseif, count = 1")
	elseif count == 2 then
		print("elseif, count = 2")
	else
		print("else, count is not 0, 1 or 2")
	end


# loops <a name="9"></a>
- `for` loops need a `do` and then an `end`. 
- `while` loops need a `do` and then an `end`. 

Simple for loops looks like: 
	
	for counter = num1, num2, num3 do
		(code block)
	end

where `num1` = starting number, `num2` = ending number, `num3` = step (could be negative)

	-- step by 1
	for i = 1, 10 do 
		print("loop: ", i)
	end

	-- step by 2
	for i = 1, 10, 2 do 
		print("loop: ", i)
	end

	-- step by -2
	for i = 10, 0, -2 do
		print("loop: ", i)
	end


Simple while loop example:

	local temp = true
	local i = 1

	-- note that a simpler way of doing this is to exclude the condition 'temp == true' 
	-- and just write 'while temp do' because temp is inherently a boolean value. 
	while temp == true do 
		print("Loop: ", i)
		i = i + 1
		if i == 10 then 
			temp = false
		end
	end

repeat loop (basically a do-while loop)

	local a = 1
	repeat
		print("value of a is: ", a)
		a = a + 1
	until a == 10

# input and output <a name="10"></a>
the `io` library has 6 essential methods (there are more). 
- `input(filename)`
- `output(filename)`
- `open(filename, mode)`
- `close(filename)`
- `read(arguments)`
- `write(arguments)`

Using `io.write()` and `io.read()` with `stdout` and `stdin`. 

	io.write("How old are you")
	local answer = io.read()

	if tonumber(answer) > 37 then
		io.write("You're old!")
	elseif tonumber(answer) < 37 then 
		io.write("You're young!")
	else 
		io.write("You're neither old nor young, you're 37!")
	end

`io.write()` vs `print()`==> `io.write` is usually used for writing to files whereas `print()` is usually used for printing messages. 

<span style="color:green">TODO</span>
