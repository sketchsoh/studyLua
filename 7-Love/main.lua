_G.love = require("love")
local playerInput = require("playerinput")

function love.load()
	love.graphics.setBackgroundColor(0.5, 0.5, 1, 1)
	_G.box = {
		length = 200,
		x = 100,
		y = 100,
	}
end

function love.update()
	playerInput:input()
	box.x = box.x + playerInput.x
	box.y = box.y + playerInput.y
end

function love.draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.rectangle("fill", box.x, box.y, box.length, box.length)
end
