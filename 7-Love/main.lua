_G.love = require("love")

function love.load()
	love.graphics.setBackgroundColor(0.5, 0.5, 1, 1)
	_G.box = {}
	box.length = 200
	box.x = 100
	box.y = 100
end

function love.update()
	box.x = box.x + 1
end

function love.draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.rectangle("fill", box.x, box.y, box.length, box.length)
end
