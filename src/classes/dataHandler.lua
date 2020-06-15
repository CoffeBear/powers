local DataHandler = { }
do
	DataHandler.__index = DataHandler

	DataHandler.new = function(moduleID, structure)
		local structureIndexes = { }
		for k, v in next, structure do
			structureIndexes[v.index] = k
			v.type = v.type or type(v.default)
		end

		return setmetatable({
			playerData = { },
			moduleID = moduleID,
			structure = structure,
			structureIndexes = structureIndexes,
			otherPlayerData = { }
		}, DataHandler)
	end

	local extractPlayerData = function(self, dataStr)
		local i, module, j = match(dataStr, "()" .. self.moduleID .. "=(%b{})()")
		if i then
			return module, (sub(dataStr, 1, i - 1) .. sub(dataStr, j + 1))
		end
		return nil, dataStr
	end

	local replaceComma = function(str)
		return gsub(str, ',', '\0')
	end

	local getDataNameById = function(structure, index)
		for k, v in next, structure do
			if v.index == index then
				return k
			end
		end
	end

	local strToTable

	strToTable = function(str)
		local out, index = { }, 0

		str = gsub(str, "%b{}", replaceComma)

		local tbl
		for value in gmatch(str, "[^,]+") do
			value = gsub(value, "%z", ',')

			tbl = match(value, "^{(.-)}$")

			index = index + 1
			if tbl then
				out[index] = strToTable(tbl)
			else
				out[index] = tonumber(value) or value
			end
		end

		return out
	end

	local getDataValue = function(value, valueType, valueName, valueDefault)
		if valueType == "boolean" then
			if value then
				value = (value == '1')
			else
				value = valueDefault
			end
		elseif valueType == "table" then
			value = match(value or '', "^{(.-)}$")
			value = value and strToTable(value) or valueDefault
		else
			if valueType == "number" then
				value = value and tonumber(value, 16)
			elseif valueType == "string" and value then
				value = match(value, "^\"(.-)\"$")
			end
			value = value or valueDefault
		end

		return value
	end

	local handleModuleData = function(self, playerName, structure, moduleData)
		local playerData = self.playerData[playerName]
		local valueName

		local dataIndex = 1
		if #moduleData > 0 then
			moduleData = gsub(moduleData, "%b{}", replaceComma)

			for value in gmatch(moduleData, "[^,]+") do
				value = gsub(value, "%z", ',')

				valueName = getDataNameById(structure, dataIndex)
				playerData[valueName] = getDataValue(value, structure[valueName].type, valueName,
					structure[valueName].default)
				dataIndex = dataIndex + 1
			end
		end

		local higherIndex = #self.structureIndexes
		if dataIndex <= higherIndex then
			for i = dataIndex, higherIndex do
				valueName = getDataNameById(structure, i)
				playerData[valueName] = getDataValue(nil, structure[valueName].type, valueName,
					structure[valueName].default)
			end
		end
	end

	DataHandler.newPlayer = function(self, playerName, data)
		data = data or ''

		self.playerData[playerName] = { }

		local module, otherData = extractPlayerData(self, data)
		self.otherPlayerData[playerName] = otherData

		handleModuleData(self, playerName, self.structure, (module and sub(module, 2, -2) or ''))

		return self
	end

	local tblToStr
	local transformType = function(valueType, index, str, value)
		if valueType == "number" then
			index = index + 1
			str[index] = format("%x", value)
		elseif valueType == "string" then
			index = index + 1
			str[index] = '"'
			index = index + 1
			str[index] = value
			index = index + 1
			str[index] = '"'
		elseif valueType == "boolean" then
			index = index + 1
			str[index] = (value and '1' or '0')
		elseif valueType == "table" then
			index = index + 1
			str[index] = '{'
			index = index + 1
			str[index] = tblToStr(value)
			index = index + 1
			str[index] = '}'
		end
		return index
	end

	tblToStr = function(tbl)
		local str, index = { }, 0

		local valueType
		for k, v in next, tbl do
			index = transformType(type(v), index, str, v)
			index = index + 1
			str[index] = ','
		end

		if str[index] == ',' then
			str[index] = ''
		end

		return table_concat(str)
	end

	local dataToStr = function(self, playerName)
		local str, index = { self.moduleID, "={" }, 2

		local playerData = self.playerData[playerName]
		local structureIndexes = self.structureIndexes
		local structure = self.structure

		local valueName, valueType, value
		for i = 1, #structureIndexes do
			valueName = structureIndexes[i]
			index = transformType(structure[valueName].type, index, str, playerData[valueName])
			index = index + 1
			str[index] = ','
		end

		if str[index] == ',' then
			str[index] = '}'
		else
			str[index + 1] = '}'
		end

		return table_concat(str)
	end

	DataHandler.dumpPlayer = function(self, playerName)
		local otherPlayerData = self.otherPlayerData[playerName]
		if otherPlayerData == '' then
			return dataToStr(self, playerName)
		else
			return dataToStr(self, playerName) .. "," .. otherPlayerData
		end
	end

	DataHandler.get = function(self, playerName, valueName)
		return self.playerData[playerName][valueName]
	end

	DataHandler.set = function(self, playerName, valueName, newValue, sum, _forceSave)
		if _forceSave or canSaveData then
			playerName = self.playerData[playerName]
			if sum then
				playerName[valueName] = playerName[valueName] + newValue
			else
				playerName[valueName] = newValue
			end
		end
		return self
	end

	DataHandler.save = function(self, playerName, _forceSave)
		if _forceSave or canSaveData then
			savePlayerData(playerName, self:dumpPlayer(playerName))
		end

		return self
	end
end