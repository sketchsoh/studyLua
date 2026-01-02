local function Pet(name, gender)
	return {
		name = name or "Nibbles",
		gender = gender or "male",
		saturation = 5,
		lick = function(self)
			if self.saturation <= 0 then
				print("Can't lick, too hungry!!!")
				print("FEED NOW!")
				return
			end
			print(self.name .. " is licking!")
			self.saturation = self.saturation - 1
		end,
		feed = function(self)
			if self.saturation >= 7 then
				print("Too FULL, will lick now")
				for i = 1, 2, 1 do
					self:lick()
				end
				return
			end
			print(self.name .. " says YUMMY!!")
			self.saturation = self.saturation + 1
		end,
	}
end

local function Cat(name, gender, breed)
	local cat = Pet(name, gender)
	cat.breed = breed or "Tabby"
	return cat
end

local cat = Pet("Nibbles", "female")
print(cat.name)
cat:lick()

local siamese = Cat("Dewey", "female")
siamese.breed = "Siamese"

print(siamese.name, siamese.gender, siamese.breed)
while siamese.saturation > 0 do
	siamese:lick()
end
siamese:lick()
while siamese.saturation <= 8 do
	siamese:feed()
	if siamese.saturation == 7 then
		break
	end
end
siamese:feed()
siamese:feed()
