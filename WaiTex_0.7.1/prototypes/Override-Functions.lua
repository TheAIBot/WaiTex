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
	t.width = t.width * modifier
	t.height = t.height * modifier
	t.scale = 1 / modifier
	
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



function AllowChange(name, t, doOverride)
	if doOverride then
		return true
	end
	if TexturePermissions[name] == nil then
		return false
	end
	local tex = TexturePermissions[name]
	return tex.enabled and (GB1 == false or GB1 == true and tex.GB1 == false)
end

function IsBaseTexture(t)
	if t.filename ~= nil then
		return string.find(t.filename, "__base__")
	else
		return string.find(t.filenames[1], "__base__")
	end
end

function ConvertToLayers(t, key, directions, prefix, postfix, count, width, height)
	CreateLayers(t, key, directions)
	local filepaths = CreateFilePaths(prefix, postfix, count)
	AddStripes(t, width, height, filepaths)
end

function AddStripes(t, width, height, filenames)
	ScaleSprite(t)
	t.filename = nil
	t.stripes = {}
	for i = 1, #filenames do
		if width ~= nil then
			t.stripes[i] = 
			{
				filename = filenames[i],
				width_in_frames = width,
				height_in_frames = height
			}
		else
			t.stripes[i] = 
			{
				filename = filenames[i][1],
				width_in_frames = filenames[i][2],
				height_in_frames = filenames[i][3]
			}
		end
	end
end

function CreateFilePaths(prefix, postfix, count, start)
	paths = {}
	start = start or 1
	for i = start, start - 1 + count do
		paths[i] = prefix..tostring(i)..postfix
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









