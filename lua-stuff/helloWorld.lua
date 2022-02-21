-- This is a comment 
print("hello world")

--[[
This is a multiline comment
]]

-------- Variable names
-- A string
name = "Mason"
name1 = "World"

print(name)
print(name1)

-- printing out to stdout
io.write("Size of string 'world' is: ", #name1, "\n")

-- Originally we had a string but then can replace the data inside it with an integer
name1 = 4
io.write("My name is ", name1, "\n")

-- biggest integer we have
bigNum = 9223372036854775807
io.write("big number is ", bigNum, "\n")

-- Not the biggest number anymore
io.write("Adding 1 to the number gets us: ", bigNum + 1, "\n")

-- Finding the type of a variable
io.write("The type of the variable bigNum is: ", type(bigNum))

-- Floating point numbers are correct up to the 13th decimal place
floatPrecision = 1.9999999999999
io.write("a float with 13 decimal places is: ", floatPrecision, "\n")
floatPrecision = floatPrecision + 0.00000000000001
io.write("a float with 13 decimal places is: ", floatPrecision, "\n")

-- operations
io.write("5 + 3 = ", 5 + 3, "\n")
io.write("5 - 3 = ", 5 - 3, "\n")
io.write("5 / 3 = ", 5 / 3, "\n")
io.write("5 * 3 = ", 5 * 3, "\n")
io.write("5 % 3 = ", 5 % 3, "\n")

-- math functions
io.write("floor(2.345) : ", math.floor(2.345), "\n")
io.write("ceil(2.345) : ", math.ceil(2.345), "\n")
io.write("max(2, 3) : ", math.max(2, 3), "\n")
io.write("min(2, 3) : ", math.min(2, 3), "\n")
io.write("pow(8, 2) : ", math.pow(8, 2), "\n")
io.write("sqrt(64) : ", math.sqrt(64), "\n")

-- random numbers
io.write("math.random() : ", math.random(), "\n") -- random number between 0 and 1
io.write("math.random(10) : ", math.random(10), "\n") -- random number between 1 and 10
io.write("math.random(5, 100) : ", math.random(5, 100), "\n") -- ranndom number between 5 and 100
math.randomseed(os.time()) -- set a seet depending on time
print(string.format("Pi = %.10f", math.pi)) -- print out pi to 10 decimal places

-- relational operators: > < >= <= == ~= and if, elseif, else 
-- and logical operators: and, or, not
age  = 13

-- simple if statement
if (age < 14) or (age > 67) then 
	io.write("You shouldn't work\n")
end
-- if elseif else
if (age < 16) then
	io.write("You can go to school", "\n")
	local localVar = 10 -- variables are local to the current scope
elseif (age <= 16) and (age < 18) then 
	io.write("You can drive", "\n")
else 
	io.write("You can vote", "\n")
end

print(localVar) -- wont print a value. will print nil

-- printing booleans
io.write(string.format("not true = %s\n", tostring(not true)))

-- ternary operator in lua
-- Other languages: canVote = age > 18 ? true : false
canVote = age > 18 and true or false 
io.write("can I vote: ", tostring(canVote), "\n")

