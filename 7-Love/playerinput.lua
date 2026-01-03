local x = 0
local y = 0
local function input()
	if love.keyboard.isDown("a") then
		x = -1
	elseif love.keyboard.isDown("d") then
		x = 1
	else
		x = 0
	end

	if love.keyboard.isDown("w") then
		y = -1
	elseif love.keyboard.isDown("s") then
		y = 1
	else
		y = 0
	end
end
return {
	x = x,
	y = y,
	input = input,
}
