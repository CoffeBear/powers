local Power = { }
do
	Power.__index = Powers

	Power.new = function(name, type, level, imageData)
		return setmetatable({
			name = name,
			type = type,
			level = level,

			effect = nil,
			bind = nil,

			damage = nil,
			selfDamage = nil,

			useLimit = -1,
			useCooldown = 1000,

			imageData = nil,

			bindKeys = nil,
			keySequence = nil,
			lenKeySequence = nil
		}, Power)
	end

	Power.setEffect = function(self, f)
		self.effect = f
		return self
	end

	Power.setDamage = function(self, damage)
		self.damage = damage
		return self
	end

	Power.selfDamage = function(self, damage)
		self.selfDamage = damage
		return self
	end

	Power.setUseLimit = function(self, limit)
		self.useLimit = limit
		return self
	end

	Power.useCooldown = function(self, cooldown)
		self.useCooldown = cooldown * 1000
		return self
	end

	Power.setBind = function(self, ...)
		if not key then
			self.bind = system.bindMouse
		else
			self.bindKeys = { ... }
			local totalKeys = #self.bindKeys
			self.bind = function(playerName)
				for k = 1, totalKeys do
					system.bindKeyboard(playerName, self.bindKeys[k], true)
				end
			end
		end
		return self
	end

	Power.setKeySequence = function(self, ...)
		self.keySequence = (... and { ... } or self.bindKeys)
		self.lenKeySequence = { _count = #self.keySequence }

		for s = 1, self.lenKeySequence._count do
			self.lenKeySequence[s] = #self.keySequence[s]
		end

		return self
	end

	Power.getNewPlayerData = function(self, currentTime)
		return {
			remainingUses = self.useLimit,
			cooldown = currentTime + self.useCooldown
		}
	end

	Power.damagePlayers = function(self, playerName, args, _method)
		if self.damage then
			(_method or damagePlayers)(playerName, self.damage, unpack(args))
		end
	end

	Power.trigger = function(self, playerName, _cache, _time, _x, _y)
		_cache = _cache or playerCache[playerName]

		local powers = _cache.powers[self.name]
		if powers.remainingUses <= 0 then
			return false
		end

		_time = _time or time()
		if powers.cooldown > _time then
			return false
		end

		powers.remainingUses = powers.remainingUses - 1

		if not _x then
			local playerData = tfm.get.room.playerList[playerName]
			_x, _y = playerData.x, playerData.y
		end

		if self.effect then
			local args = { self.effect(playerName, _x, _y, _cache.isFacingRight, self, _cache) }
			if args[1] then -- return false to perform the damage inside the effect
				self:damagePlayers(playerName, args)
			end
		end

		if self.selfDamage then
			damage(playerName, self.selfDamage, _cache)
		end

		return true
	end
end