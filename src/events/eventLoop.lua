eventLoop = function(currentTime, remainingTime)
	if remainingTime < 500 or players._count.alive <= 0 then--< DEBUG <--1 then
		if not hasTriggeredRoundEnd then
			eventRoundEnded()
		end
		return nextMap()
	end
	timer.loop()
	unrefreshableTimer.loop()
end