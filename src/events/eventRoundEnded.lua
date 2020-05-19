eventRoundEnded = function()
	hasTriggeredRoundEnd = true
	canTriggerPowers = false

	-- Clears all current times
	timer.refresh()

	local alivePlayers, lobbyPlayers = players.alive, players.lobby
	local winners, winnerCount = { }, 0

	for name, cache in next, playerCache do
		-- Only players that played in this round
		if not lobbyPlayers[name] then
			if resetPlayersDefaultSize then
				changePlayerSize(name, 1)
			end

			if cache.soulMate then
				linkMice(name, cache.soulMate, false)
			end

			if alivePlayers[name] then
				winnerCount = winnerCount + 1
				winners[winnerCount] = name

				playerData
					:set(name, "xp", module.xp_on_victory, true)
					:set(name, "victories", 1, true)
			end
			playerData
				:set(name, "rounds", 1, true)
				:save(name)
		end
	end
	resetPlayersDefaultSize = false

	-- Resets divine powers
	removeTextArea(textAreaId.gravitationalAnomaly)

	-- Announce winner
	if winnerCount > 0 then
		chatMessage(format(getText.mentionWinner, table_concat(winners, ", ")))
	else
		chatMessage(getText.noWinner)
	end
end