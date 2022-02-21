quote = "this is my string";

-- check the length of string. Use '#'
io.write("The length of the string is ", #quote, "\n");

-- replacing strings. Use string.gsub(the string, word to find, word to replace with)
io.write(string.gsub(quote, "my", "I"), "\n");

-- index a word occurs at: string.find(the string, word to find)
io.write(string.find(quote, "is"), "\n")

-- upper case: string.upper(string) and lower case: string.lower(string)

print(string.byte("abc", 1))

print(string.byte("abc", 1, 2))



	local stringOne = "hello"
	local stringTwo = "world"
	local stringThree = string.format("%s %s, pi to 4 decimal places is: %.4f", stringOne, stringTwo, math.pi)
	print(stringThree)



	local day, month, year = 28, 2, 1980
	local stringFour = string.format("%02d/%02d/%04d", day, month, year)
	print(stringFour)



	local findString = "Mason Wong"
	local sBegin, sEnd = string.find(findString, "wong")
	print(sBegin, sEnd)


	local matchString = "Hello World"
	local found = string.match(matchString, "world")
	print(found)



	local data = "The date was 02/05/1999"
	local date = string.match(data, "%d*/%d*/%d*")
	print(date)



	local temp = "I have 2 children"
	local temp2 = string.gsub(temp, "children", "cats")
	print(temp2)



	local count = 1
	local answer = "yes"
	local lives = 0

	if (count == 1) and (answer == "yes") then
		print("if-then using and")
	end



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


	
	local a = 1
	repeat
		print("value of a is: ", a)
		a = a + 1
	until a == 10
