do
	local link = linkMice
	linkMice = function(p1, p2, linked)
		if linked then
			playerCache[p1].soulMate = p2
			playerCache[p2].soulMate = p1
		else
			playerCache[p1].soulMate = nil
			playerCache[p2].soulMate = nil
		end

		return link(p1, p2, linked)
	end
end

local isMapCode = function(x)
	if sub(x, 1, 1) == '@' then
		x = sub(x, 2)
	end

	local str = x
	x = tonumber(x)
	return (not not x and #str > 3), x
end