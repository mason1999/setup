-- While loop
i = 1;

while (i <= 10) do 
	io.write(i);
	i = i + 1;

	if (i == 8) then
		break;
	end
end
print("\n");


-- similar to do while loop
repeat
	io.write("Enter your guess: ");
	guess = io.read();
until tonumber(guess) == 15

-- for loops
-- start from 1, go till 10, increment the value of i by 2 each time. 
for i = 1, 10, 2 do
	io.write(i);
end


