eventKeyboard = function(playerName, key, isDown, x, y)
	local time = playerCanTriggerEvent(playerName, true)
	if not time then return end

	local cache = playerCache[playerName]
	if key == 0 then
		cache.isFacingRight = false
	elseif key == 2 then
		cache.isFacingRight = true
	end

	local playerKs = cache.keySequence
	playerKs:insert(key)

	local matchCombo = false
	local src = Power.__keyboard
	for power = 1, Power.__eventCount.__keyboard do
		power = src[power]

		-- Not internal, must be explicit
		if power.triggererKey then
			matchCombo = (key == power.triggererKey)
		else
			local powerKs = power.keySequences
			for ks = 1, power.totalKeySequences do
				if playerKs:isEqual(powerKs[ks]) then
					matchCombo = true
					break
				end
			end
		end

		if matchCombo then
			return power:trigger(playerName, cache, time, x, y)
		end
	end
end