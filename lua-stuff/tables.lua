months = {"January", "February", "March", "April", 
"May", "June", "July", "August", "September", 
"October", "November", "December"};

-- iterating through a table
-- key is implicitly the index. Value is the month name. 
for key, value in pairs(months) do
	io.write("The key is: ", key, "\nThe value is: ", value, "\n");
end

io.write("\n");

-- a table
aTable = {};

-- initialise the table
for i = 1, 10 do 
	aTable[i] = i;
end

-- access an element in the table
io.write("aTable[1] (first element) = ", aTable[1], "\n");

-- Find the number of items in the table
io.write("Number of elements in the table is: ", #aTable, "\n");

-- Insert into the 1st index the value 0
table.insert(aTable, 1, 0);

-- Convert the table to a string and define how we want the items to be separated
str = table.concat(aTable, ", ");
io.write(str, "\n");
io.write("num of elements: ", #aTable, "\n");
-- Remove from the 3rd index
table.remove(aTable, 3);
str = table.concat(aTable, ", ");
io.write(str, "\n");
io.write("num of elements: ", #aTable, "\n");


-- multidimensional tables
-- ex 1: printing numbers from 0 to 99
nums = {};
for i = 0, 9 do
	nums[i] = {};
	for j = 0, 9 do
		print(i * 10 + j);
		nums[i][j] = i * 10 + j;
	end
end

for i = 0, 9 do
	io.write(table.concat(nums[i], ", "), "\n");
end

-- ex 2: printing numbers from 0 to 99
strNums = {};
for i = 0, 9 do
	nums[i] = {};
	for j = 0, 9 do
		nums[i][j] = tostring(i) .. tostring(j);
	end
end

for i = 0, 9 do
	for j = 0, 9 do
		io.write(nums[i][j], " ");
	end
	io.write("\n");
end
