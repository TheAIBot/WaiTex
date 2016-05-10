require("AllowedTextureChanges")

function OverrideAnimation(t, width_in_frames, height_in_frames)
	ChangeAnimationSize(t, width_in_frames, height_in_frames)
	OverrideSprite(t)
end

function OverrideSprite(t, modifier, filename)
	ChangeFileName(t, filename)
	ScaleSprite(t, modifier)
end

function OverrideAllSprites(t, modifier)
	for k,v in pairs(t) do
		ChangeFileName(v)
		ScaleSprite(v, modifier)
	end
end

function ManualOverrideSprite(t, width, height, modifier)
	ChangeFileName(t)
	t.width = width
	t.height = height
	t.scale = 1 / modifier
end

function ChangeFileName(t, filename)
	if filename == nil then
		t.filename = string.gsub(t.filename, "__base__", "__WaiTex__")
	else
		t.filename = filename
	end
end

function ScaleSprite(t, modifier)
	modifier = modifier or 2
	t.width = math.floor(t.width * modifier)
	t.height = math.floor(t.height * modifier)
	t.scale = (t.scale or 1) / modifier
	
	if t.y ~= nil then
		t.y = t.y * modifier
	end
	if t.x ~= nil then
		t.x = t.x * modifier
	end
end

function ChangeAnimation(t, width_in_frames, height_in_frames)
	ChangeFileName(t)
	ChangeAnimationSize(t, width_in_frames, height_in_frames)
end

function ChangeAnimationSize(t, width_in_frames, height_in_frames)
	if height_in_frames == nil then
		t.line_length = width_in_frames
	else
		t.width_in_frames = width_in_frames
		t.height_in_frames = height_in_frames
	end
end



function AllowChange(name)
	if TexturePermissions[name] == nil then
		return true
	end
	local tex = TexturePermissions[name]
	return (tex.enabled and (AvailableGB >= tex.requiredGB))
end

function IsBase(filepath)
	return string.find(filepath, "__base__")
end

function AddStripes(t, width, height, filenames, yValue)
	ScaleSprite(t)
	t.filename = nil
	t.x = nil
	t.y = nil
	t.line_length = nil
	t.stripes = {}
	if yValue then 
		yValue = yValue * 2
	end
	for i = 1, #filenames do
		if width ~= nil then
			t.stripes[i] = 
			{
				filename = filenames[i],
				width_in_frames = width,
				height_in_frames = height,
				y = yValue
			}
		else
			t.stripes[i] = 
			{
				filename = filenames[i][1],
				width_in_frames = filenames[i][2],
				height_in_frames = filenames[i][3],
				y = yValue
			}
		end
	end
end

function MergeTables(t)
	local merged = {}
	for i = 1, #t do
		for x = 1, #t[i] do
			merged[#merged + 1] = t[i][x]
		end
	end
	return merged
end

function StripMerge(t, length, stripLengths)
	local combined = {}
	for i = 0,length - 1 do
		for z = 1,#t do
			for x = 1,stripLengths[z] do
				combined[#combined + 1] = t[z][i * stripLengths[z] + x]
			end
		end
	end
	return combined
end

function CreateFilePaths(prefix, postfix, count, start, width, height)
	paths = {}
	start = start or 1
	for i = start, start - 1 + count do
		if width == nil then
			paths[i - start + 1] = prefix..tostring(i)..postfix
		else
			paths[i - start + 1] = { prefix..tostring(i)..postfix, width, height}
		end
	end
	return paths
end

function AddLayers(t, key, settingsChanges)
	require("util")
	local holdT = util.table.deepcopy(t)
	local index = 1
	if key == nil then				
		for k,v in pairs(holdT) do
			t[k] = {}
			t[k]["layers"] = {}
			t[k]["layers"][index] = holdT[k]
			ChangeSettings(t[k]["layers"][index], settingsChanges)
			index = index + 1
			
		end
	else
		t[key] = {}
		t[key]["layers"] = {}
		t[key]["layers"][index] = holdT[key]
		ChangeSettings(t[key]["layers"][index], settingsChanges)
	end
end

function ChangeSettings(t, settingsChanges)
	for _,v in pairs(settingsChanges) do
		t[v[1]] = v[2]
	end
end

function ChangeIcon(t)
	t.icon = string.gsub(t.icon, "__base__", "__WaiTex__")
end

--i should really document how to function works as i
--will probably use it a lot in the future, but i am
--am too lazy to do it and the code is totally self explanatory!
function TextureToSpritesConverter(t, pathTemplate)
	if t.stripes ~= nil and t.frame_count ~= nil and t.direction_count ~= nil then
		if PatternMatchColumnAdditions(t) then
			local numberOfStripMerges = GetStripeMerges(t)
			local stripeSpritePaths = GetStripeSpritePaths(t, pathTemplate)
			local stripMergedTogether = GetMergedStrips(t, numberOfStripMerges, stripeSpritePaths)
			local orderedStripePaths = MergeTables(stripMergedTogether)
			--print(serpent.block(orderedStripePaths))
			AddStripes(t, 1, 1, orderedStripePaths)
		else
			local paths = {}
			print("Herp a derp")
			--print(#t.stripes)
			--for u = 1, #t.stripes do
			--	print(t.stripes[u].filename)
			--end
			local index = 1
			--this code doesn't take line_length and such into consideration when deciding how many images to take
			local spriteCount = 0
			local width = 0
			for i = 1, #t.stripes do
				spriteCount = spriteCount + t.stripes[i].height_in_frames * t.stripes[i].width_in_frames
				width = width + t.stripes[i].width_in_frames
			end
			for row = 1, t.stripes[1].height_in_frames do
				for stripeNumber = 1, #t.stripes do
					for col = 1, t.stripes[1].width_in_frames do
						if index <= spriteCount then
							local stripesPath = string.gsub(pathTemplate, "&", tostring(stripeNumber))
							paths[#paths + 1] = CreateFilePaths(stripesPath, ".png", 1, (row - 1) * width + col)[1]
							index = index + 1
						end
					end
				end
			end
			for k, v in ipairs(paths) do
				print(v)
			end
			AddStripes(t, 1, 1, paths)
		end
	elseif t.filename ~= nil and t.frame_count ~= nil then
		local width = (t.line_length or t.frame_count)
		local height = (t.direction_count or 1) * (t.frame_count / (t.line_length or t.frame_count))
		local startSpriteNumber = width * (((t.y or 0) / t.height)) + 1
		local numberOfSprites = width * height
		AddStripes(t, 1, 1, CreateFilePaths(pathTemplate, ".png", numberOfSprites, startSpriteNumber))
	else
		print("couldn't convert stripe texture to sprites")
	end
end

function PatternMatchColumnAdditions(t)
	local frameHeight = t.stripes[1].height_in_frames
	for i = 2, #t.stripes do
		if frameHeight ~= t.stripes[i].height_in_frames then
			print("false")
			return false
		end
	end
	print("true")
	return true
end

function GetStripeMerges(t)
	local sum = 0
	for i = 1,#t.stripes do
		sum = sum + (t.line_length or t.stripes[i].width_in_frames)
		if sum == t.frame_count then
			return #t.stripes / i
		end
	end
end

function GetStripeSpritePaths(t, pathTemplate)
	local frameHeight = t.stripes[1].height_in_frames
	local stripeSpritePaths = {}
	for i = 1, #t.stripes do
		local stripesPath = string.gsub(pathTemplate, "&", tostring(i))
		local startSpriteNumber = t.stripes[i].width_in_frames * (((t.stripes[i].y or 0) / t.height)) + 1
		local numberOfSprites = t.stripes[i].width_in_frames * math.min(t.stripes[i].height_in_frames, t.direction_count)
		--print(startSpriteNumber)
		--print(numberOfSprites)
		stripeSpritePaths[i] = CreateFilePaths(stripesPath, ".png", numberOfSprites, startSpriteNumber)
		--print(serpent.block(stripeSpritePaths[i]))
	end
	return stripeSpritePaths
end

function GetMergedStrips(t, numberOfStripMerges, stripeSpritePaths)
	local frameHeight = t.stripes[1].height_in_frames
	local stripMergedTogether = {}
	local stripMergeTablesLength = #t.stripes / numberOfStripMerges
	for i = 0, numberOfStripMerges - 1 do
		local tablesToStripMerge = {}
		local tableLengths = {}
		for x = 1 + stripMergeTablesLength * i, stripMergeTablesLength + stripMergeTablesLength * i do
			tablesToStripMerge[#tablesToStripMerge + 1] = stripeSpritePaths[x]
			tableLengths[#tableLengths + 1] = t.stripes[x].width_in_frames
		end
		stripMergedTogether[i + 1] = StripMerge(tablesToStripMerge, frameHeight, tableLengths)
	end
	return stripMergedTogether
end







