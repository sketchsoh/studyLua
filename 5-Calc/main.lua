local input1
local input2
local answer

local function add(num1, num2)
	return num1 + num2
end

local function sub(num1, num2)
	return num1 - num2
end

local function readInputs()
	io.write("First Number: ")
	input1 = io.read()
	io.write("Second Number: ")
	input2 = io.read()
end

io.write("Add or Subtract?: ")
local addOrSub = io.read()
print(addOrSub)
if addOrSub == "add" or addOrSub == "Add" then
	readInputs()
	answer = add(input1, input2)
	print("Adding...")
	print("Answer: " .. answer)
elseif addOrSub == "subtract" or addOrSub == "Subtract" then
	readInputs()
	answer = sub(input1, input2)
	print("Subtracting...")
	print("Answer: " .. answer)
else
	print("Input Doesn't Exist!")
	print("Exiting!")
	return
end
