require("prototypes.Override-Functions")

ChangeTextureConfiguration = 
{
	--[[assembling-machine-1]]--
	["__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[assembling-machine-2]]--
	["__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png"] = function(t)  OverrideSprite(t[#t]) end,
		--assembler-pipes
	["__base__/graphics/entity/assembling-machine-2/pipe-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-2/pipe-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-2/pipe-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-2/pipe-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[assembling-machine-3]]--
	["__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png"] = function(t)  OverrideSprite(t[#t]) end,
		--assembler-pipes
	["__base__/graphics/entity/assembling-machine-3/pipe-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-3/pipe-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-3/pipe-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-3/pipe-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[basic-beacon]]--
	["__base__/graphics/entity/basic-beacon/basic-beacon-base.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/basic-beacon/basic-beacon-antenna.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[basic-inserter]]--
	["__base__/graphics/entity/basic-inserter/basic-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/basic-inserter/basic-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/basic-inserter/basic-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/basic-inserter/basic-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[basic-mining-drill]]--
	["__base__/graphics/entity/basic-mining-drill/north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/basic-mining-drill/east.png"] = function(t)  ManualOverrideSprite(t[#t], 256, 200, 2) end,
	["__base__/graphics/entity/basic-mining-drill/south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/basic-mining-drill/west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[basic-splitter]]--
	["__base__/graphics/entity/basic-splitter/basic-splitter-north.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/basic-splitter/basic-splitter-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/basic-splitter/basic-splitter-south.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/basic-splitter/basic-splitter-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[basic-transport-belt]]--
	["__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[basic-transport-belt-to-ground]]--
	["__base__/graphics/entity/basic-transport-belt-to-ground/basic-transport-belt-to-ground-structure.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[basic-accumulator]]--
	["__base__/graphics/entity/basic-accumulator/basic-accumulator.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png"] = function(t)
		t[#t] = layers = 
		{
			{
				width = 124 * 2,
				height = 103 * 2,
				frame_count = 24,
				shift = {0.7, -0.2},
				animation_speed = 0.5,
				scale = 0.5,
				stripes = (function()
					result = {}
					stripe = 
					{
						filename = "__WaiTex__/graphics/entity/basic-accumulator/basic-accumulator.png",
						width_in_frames = 1,
						height_in_frames = 1
					}
					for i = 1,24 do
						result[i] = stripe
					end
					return result
				end)()
			},
			{
				filename = "__WaiTex__/graphics/entity/basic-accumulator/basic-accumulator-charge-sparks.png",
				width = 138 * 2,
				height = 135  *2,
				line_length = 6,
				frame_count = 24,
				scale = 0.5,
				shift = {0.482, -0.638},
				animation_speed = 0.5
			}
		}
	end,
	["__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png"] = function(t)
		t[#t] = layers = 
		{
			{
				width = 124 * 2,
				height = 103 * 2,
				frame_count = 24,
				shift = {0.7, -0.2},
				animation_speed = 0.5,
				scale = 0.5,
				stripes = (function()
					result = {}
					stripe = 
					{
						filename = "__WaiTex__/graphics/entity/basic-accumulator/basic-accumulator.png",
						width_in_frames = 1,
						height_in_frames = 1
					}
					for i = 1,24 do
						result[i] = stripe
					end
					return result
				end)()
			},
			{
				filename = "__WaiTex__/graphics/entity/basic-accumulator/basic-accumulator-discharge-sparks.png",
				width = 147 * 2,
				height = 128 * 2,
				line_length = 6,
				frame_count = 24,
				scale = 0.5,
				shift = {0.395, -0.525},
				animation_speed = 0.5
			}
		}
	end,
	
	
	--[[big-electric-pole]]--
	["__base__/graphics/entity/big-electric-pole/big-electric-pole.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[boiler]]--
	["__base__/graphics/entity/boiler/boiler-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-left-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-right-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-left-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-right-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-t-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-t-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[burner-inserter]]--
	["__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/burner-inserter/burner-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[burner-mining-drill]]--
	["__base__/graphics/entity/burner-mining-drill/north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/burner-mining-drill/east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/burner-mining-drill/south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/burner-mining-drill/west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[car]]]--
	["__base__/graphics/entity/car/car-1.png"] = function(t)
		if #t > 2 and t[#t - 1].stripes ~= nil then
			ScaleSprite(t[#t - 2])
			ChangeAnimation(t[#t], 4, 11)
			ChangeAnimation(t[#t - 1].stripes[2], 4, 11)
			ChangeAnimation(t[#t - 1].stripes[3], 4, 10)
		end
	end,
	["__base__/graphics/entity/car/car-turret.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[cargo-wagon]]--
	["__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png"] = function(t)
		if #t > 1 and t[#t - 1].filenames ~= nil then
			t[#t - 1].line_length = 2
			t[#t - 1].lines_per_file = 4
			t[#t - 1].filenames = CreateFilePaths("__WaiTex__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-", ".png", 16)
		end
	end,
	
	
	--[[cargo-wagon]]--
	["__base__/graphics/entity/chemical-plant/chemical-plant.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[coal]]--
	["__base__/graphics/entity/coal/coal.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[combinator]]--
	["__base__/graphics/entity/combinator/aritmetic.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/aritmetic-led.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/decider.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/decider-led.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/constanter.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[defender]]--
	["__base__/graphics/entity/defender-robot/defender-robot.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[destroyer]]--
	["__base__/graphics/entity/destroyer-robot/destroyer-robot.png"] = function(t)
		AddStripes(t[#t], 16, 2, CreateFilePaths("__WaiTex__/graphics/entity/destroyer-robot/destroyer-robot-", ".png", 2))
		t[#t].line_length = 16
		t[#t].y = nil
	end
	["__base__/graphics/entity/destroyer-robot/destroyer-robot.png"] = function(t)
		AddStripes(t[#t], 16, 2, CreateFilePaths("__WaiTex__/graphics/entity/destroyer-robot/destroyer-robot-", ".png", 2))
		t[#t].line_length = 16
	end
	
	
	--[[distractor]]--
	["__base__/graphics/entity/distractor-robot/distractor-robot.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[construction-robot]]--
	["__base__/graphics/entity/construction-robot/construction-robot.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/construction-robot/construction-robot-working.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[copper-ore]]--
	["__base__/graphics/entity/copper-ore/copper-ore.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[curved-rail]]--
	
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
	--[[cargo-wagon]]--
}

function RecursiveOverrideBaseTextures(t)
	for k,v in pairs(t[#t]) do
		if type(v) == "string" then
			if string.find(v, "__base__/graphics/entity") and ChangeTextureConfiguration[v] ~= nil then
				ChangeTextureConfiguration[v](t)
				return
			end
		elseif type(v) == "table" then
			t[#t + 1] = v
			RecursiveOverrideBaseTextures(t)
			t[#t] = nil
		end
	end
end

for k,v in pairs(data.raw) do
	for k1,v1 in pairs(v) do
		if AllowChange(v1.name) then
			RecursiveOverrideBaseTextures({v1})
		end
	end
end
--[[


--curved-rail
if AllowChange("curved-rail", data.raw["rail"]["curved-rail"].pictures["curved_rail_horizontal"]["metals"]) then
	--OverrideSprite(data.raw["rail"]["curved-rail"].pictures["curved_rail_horizontal"]["metals"])
	OverrideSprite(data.raw["rail"]["curved-rail"].pictures["curved_rail_horizontal"]["backplates"])
	OverrideSprite(data.raw["rail"]["curved-rail"].pictures["curved_rail_horizontal"]["ties"])
	--OverrideSprite(data.raw["rail"]["curved-rail"].pictures["curved_rail_vertical"]["metals"], 4)
	OverrideSprite(data.raw["rail"]["curved-rail"].pictures["curved_rail_vertical"]["backplates"])
	OverrideSprite(data.raw["rail"]["curved-rail"].pictures["curved_rail_vertical"]["ties"])
end

--decorative
if AllowChange("decorative", data.raw["decorative"]["brown-asterisk"].pictures[1]) then
	OverrideAllSprites(data.raw["decorative"]["brown-asterisk"].pictures)
	OverrideAllSprites(data.raw["decorative"]["brown-cane-cluster"].pictures)
	OverrideAllSprites(data.raw["decorative"]["brown-cane-single"].pictures)
	OverrideAllSprites(data.raw["decorative"]["brown-carpet-grass"].pictures)
	OverrideAllSprites(data.raw["decorative"]["brown-coral-mini"].pictures)
	OverrideAllSprites(data.raw["decorative"]["brown-fluff"].pictures)
	OverrideAllSprites(data.raw["decorative"]["brown-fluff-dry"].pictures)
	OverrideAllSprites(data.raw["decorative"]["brown-hairy-grass"].pictures)
	OverrideAllSprites(data.raw["decorative"]["garballo"].pictures)
	OverrideAllSprites(data.raw["decorative"]["garballo-mini-dry"].pictures)
	OverrideAllSprites(data.raw["decorative"]["green-asterisk"].pictures)
	OverrideAllSprites(data.raw["decorative"]["green-bush-mini"].pictures)
	--OverrideAllSprites(data.raw["decorative"]["green-carpet-grass"].pictures)
	OverrideAllSprites(data.raw["decorative"]["green-coral-mini"].pictures)
	OverrideAllSprites(data.raw["decorative"]["green-hairy-grass"].pictures)
	--OverrideAllSprites(data.raw["decorative"]["green-pita"].pictures)
	--OverrideAllSprites(data.raw["decorative"]["green-pita-mini"].pictures)
	OverrideAllSprites(data.raw["decorative"]["green-small-grass"].pictures)
	OverrideAllSprites(data.raw["decorative"]["orange-coral-mini"].pictures)
	OverrideAllSprites(data.raw["decorative"]["orange-coral-mini"].pictures)
	OverrideAllSprites(data.raw["decorative"]["root-A"].pictures)
	--OverrideAllSprites(data.raw["decorative"]["small-rock"].pictures)
	--OverrideAllSprites(data.raw["simple-entity"]["stone-rock"].pictures)
end


--diesel-locomotive
if AllowChange("diesel-locomotive", data.raw["locomotive"]["diesel-locomotive"].pictures) then
	ScaleSprite(data.raw["locomotive"]["diesel-locomotive"].pictures)
	data.raw["locomotive"]["diesel-locomotive"].pictures.line_length = 2
	data.raw["locomotive"]["diesel-locomotive"].pictures.lines_per_file = 4
	data.raw["locomotive"]["diesel-locomotive"].pictures.filenames = CreateFilePaths("__WaiTex__/graphics/entity/diesel-locomotive/diesel-locomotive-", ".png", 32)
end


--electric-furnace
if AllowChange("electric-furnace", data.raw["furnace"]["electric-furnace"].animation) then
	OverrideSprite(data.raw["furnace"]["electric-furnace"].animation)
	OverrideSprite(data.raw["furnace"]["electric-furnace"].working_visualisations[1].animation)
	OverrideSprite(data.raw["furnace"]["electric-furnace"].working_visualisations[2].animation)
	OverrideSprite(data.raw["furnace"]["electric-furnace"].working_visualisations[3].animation)
end


--express-splitter
if AllowChange("express-splitter", data.raw["splitter"]["express-splitter"].structure.north) then
	OverrideAnimation(data.raw["splitter"]["express-splitter"].structure.north, 8)
	OverrideSprite(data.raw["splitter"]["express-splitter"].structure.east)
	OverrideAnimation(data.raw["splitter"]["express-splitter"].structure.south, 8)
	OverrideSprite(data.raw["splitter"]["express-splitter"].structure.west)
end


--express-transport-belt-to-ground
if AllowChange("express-transport-belt-to-ground", data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"].structure.direction_in.sheet) then
	OverrideSprite(data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"].structure.direction_in.sheet)
	OverrideSprite(data.raw["transport-belt-to-ground"]["express-transport-belt-to-ground"].structure.direction_out.sheet)
end


--fast-inserter
if AllowChange("fast-inserter", data.raw["inserter"]["fast-inserter"].hand_base_picture) then
	OverrideSprite(data.raw["inserter"]["fast-inserter"].hand_base_picture, 1)
	OverrideSprite(data.raw["inserter"]["fast-inserter"].hand_closed_picture, 1)
	OverrideSprite(data.raw["inserter"]["fast-inserter"].hand_open_picture, 1)
	OverrideSprite(data.raw["inserter"]["fast-inserter"].platform_picture.sheet)
end


--fast-splitter
if AllowChange("fast-splitter", data.raw["splitter"]["fast-splitter"].structure.north) then
	OverrideAnimation(data.raw["splitter"]["fast-splitter"].structure.north, 8)
	OverrideSprite(data.raw["splitter"]["fast-splitter"].structure.east)
	OverrideAnimation(data.raw["splitter"]["fast-splitter"].structure.south, 8)
	OverrideSprite(data.raw["splitter"]["fast-splitter"].structure.west)
end


--fast-transport-belt-to-ground
if AllowChange("fast-transport-belt-to-ground", data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"].structure.direction_in.sheet) then
	OverrideSprite(data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"].structure.direction_in.sheet)
	OverrideSprite(data.raw["transport-belt-to-ground"]["fast-transport-belt-to-ground"].structure.direction_out.sheet)
end


--gate
if AllowChange("gate", data.raw["gate"]["gate"].vertical_animation.layers[1]) then
	OverrideSprite(data.raw["gate"]["gate"].vertical_animation.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].vertical_animation.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].horizontal_animation.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].horizontal_animation.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].horizontal_rail_animation_left.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].horizontal_rail_animation_left.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].horizontal_rail_animation_right.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].horizontal_rail_animation_right.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].vertical_rail_animation_left.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].vertical_rail_animation_left.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].vertical_rail_animation_right.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].vertical_rail_animation_right.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].vertical_rail_base)
	OverrideSprite(data.raw["gate"]["gate"].horizontal_rail_base)
	OverrideSprite(data.raw["gate"]["gate"].vertical_rail_base_mask)
	OverrideSprite(data.raw["gate"]["gate"].horizontal_rail_base_mask)
	OverrideSprite(data.raw["gate"]["gate"].wall_patch.north.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].wall_patch.north.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].wall_patch.east.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].wall_patch.east.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].wall_patch.south.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].wall_patch.south.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].wall_patch.west.layers[1])
	--OverrideSprite(data.raw["gate"]["gate"].wall_patch.west.layers[2])
	OverrideSprite(data.raw["gate"]["gate"].wall_diode_green)
	OverrideSprite(data.raw["gate"]["gate"].wall_diode_red)
end


--gun-turret
if AllowChange("gun-turret", data.raw["ammo-turret"]["gun-turret"].folded_animation.layers[1]) then
	OverrideSprite(data.raw["ammo-turret"]["gun-turret"].folded_animation.layers[1])
	OverrideSprite(data.raw["ammo-turret"]["gun-turret"].preparing_animation.layers[1])
	AddStripes(data.raw["ammo-turret"]["gun-turret"].prepared_animation.layers[1], 8, 1, CreateFilePaths("__WaiTex__/graphics/entity/gun-turret/gun-turret-gun-", ".png", 16))
	AddStripes(data.raw["ammo-turret"]["gun-turret"].attacking_animation.layers[1], 8, 1, CreateFilePaths("__WaiTex__/graphics/entity/gun-turret/gun-turret-gun-", ".png", 16))
	data.raw["ammo-turret"]["gun-turret"].attacking_animation.layers[1].frame_count = nil
	--ChangeSettings(data.raw["ammo-turret"]["gun-turret"].attacking_animation.layers[1], {{"frame_count", 16}})
	OverrideSprite(data.raw["ammo-turret"]["gun-turret"].folding_animation.layers[1])
	OverrideSprite(data.raw["ammo-turret"]["gun-turret"].base_picture.layers[1])
end


--iron-chest
if AllowChange("iron-chest", data.raw["container"]["iron-chest"].picture) then
	OverrideSprite(data.raw["container"]["iron-chest"].picture)
end


--iron-ore
if AllowChange("iron-ore", data.raw["resource"]["iron-ore"].stages.sheet) then
	OverrideSprite(data.raw["resource"]["iron-ore"].stages.sheet)
end

--lab
if AllowChange("lab", data.raw["lab"]["lab"].on_animation) then
	OverrideAnimation(data.raw["lab"]["lab"].on_animation, 3)
	OverrideSprite(data.raw["lab"]["lab"].off_animation)
end


--laser-turret
if AllowChange("laser-turret", data.raw["electric-turret"]["laser-turret"].folded_animation) then
	OverrideSprite(data.raw["electric-turret"]["laser-turret"].folded_animation)
	OverrideSprite(data.raw["electric-turret"]["laser-turret"].preparing_animation)
	data.raw["electric-turret"]["laser-turret"].prepared_animation.filename = nil
	AddStripes(data.raw["electric-turret"]["laser-turret"].prepared_animation, 4, 1, CreateFilePaths("__WaiTex__/graphics/entity/laser-turret/laser-turret-", ".png", 16))
	OverrideSprite(data.raw["electric-turret"]["laser-turret"].folding_animation)
	OverrideSprite(data.raw["electric-turret"]["laser-turret"].base_picture)
end


--logistic-chest
if AllowChange("logistic-chest-passive-provider", data.raw["logistic-container"]["logistic-chest-passive-provider"].picture) then
	OverrideSprite(data.raw["logistic-container"]["logistic-chest-passive-provider"].picture)
end
if AllowChange("logistic-chest-active-provider", data.raw["logistic-container"]["logistic-chest-active-provider"].picture) then
	OverrideSprite(data.raw["logistic-container"]["logistic-chest-active-provider"].picture)
end
if AllowChange("logistic-chest-storage", data.raw["logistic-container"]["logistic-chest-storage"].picture) then
	OverrideSprite(data.raw["logistic-container"]["logistic-chest-storage"].picture)
end
if AllowChange("logistic-chest-requester", data.raw["logistic-container"]["logistic-chest-requester"].picture) then
	OverrideSprite(data.raw["logistic-container"]["logistic-chest-requester"].picture)
end


--logistic-robot
if AllowChange("logistic-robot", data.raw["logistic-robot"]["logistic-robot"].idle) then
	OverrideSprite(data.raw["logistic-robot"]["logistic-robot"].idle)
	OverrideSprite(data.raw["logistic-robot"]["logistic-robot"].idle_with_cargo)
	OverrideSprite(data.raw["logistic-robot"]["logistic-robot"].in_motion)
	OverrideSprite(data.raw["logistic-robot"]["logistic-robot"].in_motion_with_cargo)
end


--long-handed-inserter
if AllowChange("long-handed-inserter", data.raw["inserter"]["long-handed-inserter"].hand_base_picture) then
	OverrideSprite(data.raw["inserter"]["long-handed-inserter"].hand_base_picture, 1)
	OverrideSprite(data.raw["inserter"]["long-handed-inserter"].hand_closed_picture, 1)
	OverrideSprite(data.raw["inserter"]["long-handed-inserter"].hand_open_picture, 1)
	OverrideSprite(data.raw["inserter"]["long-handed-inserter"].platform_picture.sheet)
end


--medium-electric-pole
if AllowChange("medium-electric-pole", data.raw["electric-pole"]["medium-electric-pole"].pictures) then
	OverrideSprite(data.raw["electric-pole"]["medium-electric-pole"].pictures)
end


--offshore-pump
if AllowChange("offshore-pump", data.raw["offshore-pump"]["offshore-pump"].picture.north) then
	OverrideSprite(data.raw["offshore-pump"]["offshore-pump"].picture.north)
	OverrideSprite(data.raw["offshore-pump"]["offshore-pump"].picture.east)
	OverrideSprite(data.raw["offshore-pump"]["offshore-pump"].picture.south)
	OverrideSprite(data.raw["offshore-pump"]["offshore-pump"].picture.west)
end


--oil-refinery
if AllowChange("oil-refinery", data.raw["assembling-machine"]["oil-refinery"].animation.north) then
	OverrideSprite(data.raw["assembling-machine"]["oil-refinery"].animation.north)
	OverrideSprite(data.raw["assembling-machine"]["oil-refinery"].animation.east)
	OverrideSprite(data.raw["assembling-machine"]["oil-refinery"].animation.south)
	data.raw["assembling-machine"]["oil-refinery"].animation.south.x = 0
	data.raw["assembling-machine"]["oil-refinery"].animation.south.y = data.raw["assembling-machine"]["oil-refinery"].animation.south.height
	OverrideSprite(data.raw["assembling-machine"]["oil-refinery"].animation.west)
	data.raw["assembling-machine"]["oil-refinery"].animation.west.x = data.raw["assembling-machine"]["oil-refinery"].animation.west.width
	data.raw["assembling-machine"]["oil-refinery"].animation.west.y = data.raw["assembling-machine"]["oil-refinery"].animation.west.height
end


--pipe
if AllowChange("pipe", data.raw["pipe"]["pipe"].pictures.straight_vertical_single) then
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.straight_vertical_single)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.straight_vertical)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.straight_vertical_window)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.straight_horizontal_window)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.straight_horizontal)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.corner_up_right)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.corner_up_left)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.corner_down_right)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.corner_down_left)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.t_up)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.t_down)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.t_right)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.t_left)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.cross)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.ending_up)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.ending_down)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.ending_right)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.ending_left)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.horizontal_window_background)
	OverrideSprite(data.raw["pipe"]["pipe"].pictures.vertical_window_background)	
end


--pipe-covers
if AllowChange("pipe-covers", nil, true) then
	--override all instances
	for k1,v1 in pairs(data.raw) do
		for k2,v2 in pairs(v1) do
			if v2["pipe_covers"] ~= nil then
				for k3,v3 in pairs(v2["pipe_covers"]) do
					OverrideSprite(v3)
				end
			end
		end
	end
end


--pipe-to-ground
if AllowChange("pipe-to-ground", data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.up) then
	OverrideSprite(data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.up)
	OverrideSprite(data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.down)
	OverrideSprite(data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.left)
	OverrideSprite(data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.right)
end


--pumpjack
if AllowChange("pumpjack", data.raw["mining-drill"]["pumpjack"].base_picture.sheet) then
	OverrideSprite(data.raw["mining-drill"]["pumpjack"].base_picture.sheet)
	OverrideSprite(data.raw["mining-drill"]["pumpjack"].animations.north)
	data.raw["mining-drill"]["pumpjack"].animations.north.line_length = 5
end


--radar
if AllowChange("radar", data.raw["radar"]["radar"].pictures) then
	ScaleSprite(data.raw["radar"]["radar"].pictures)
	data.raw["radar"]["radar"].pictures.direction_count = 64
	data.raw["radar"]["radar"].pictures.lines_per_file = 1
	data.raw["radar"]["radar"].pictures.line_length = 4
	data.raw["radar"]["radar"].pictures.filename = nil
	data.raw["radar"]["radar"].pictures.filenames = CreateFilePaths("__WaiTex__/graphics/entity/radar/radar", ".png", 16)
end

--rail-chain-signal
if AllowChange("rail-chain-signal", data.raw["rail-chain-signal"]["rail-chain-signal"].animation) then
	OverrideSprite(data.raw["rail-chain-signal"]["rail-chain-signal"].animation)
	OverrideSprite(data.raw["rail-chain-signal"]["rail-chain-signal"].rail_piece)
end


--player
if AllowChange("player", data.raw["player"]["player"].animations[1].idle.layers[1]) then
	-- TODO: need to fix the need for so many stripes
	-- IT'S CURRENTLY SHIT CODE DUE TO THE MANY STRIPES
	
	AddStripes(data.raw["player"]["player"].animations[1].idle.layers[1], 1, 1, CreateFilePaths("__WaiTex__/graphics/entity/player/player-basic-idle/player-basic-idle-", ".png", 176))	
	AddStripes(data.raw["player"]["player"].animations[1].idle_with_gun.layers[1], 1, 1, CreateFilePaths("__WaiTex__/graphics/entity/player/player-basic-idle-gun/player-basic-idle-gun-", ".png", 176))	
	OverrideSprite(data.raw["player"]["player"].animations[1].mining_with_hands.layers[1], nil, "__WaiTex__/graphics/entity/player/player-basic-mine.png")
	AddStripes(data.raw["player"]["player"].animations[1].mining_with_tool.layers[1], nil, nil, (function()
		result = {}
		for i = 1, 16 do
			result[#result + 1] = {"__WaiTex__/graphics/entity/player/player-basic-mine-tool/player-basic-mine-tool-"..tostring(i).."-1.png", 7, 1}
			result[#result + 1] = {"__WaiTex__/graphics/entity/player/player-basic-mine-tool/player-basic-mine-tool-"..tostring(i).."-2.png", 6, 1}
		end
		return result
	end)())
	AddStripes(data.raw["player"]["player"].animations[1].running.layers[1], 11, 1, CreateFilePaths("__WaiTex__/graphics/entity/player/player-basic-run/player-basic-run-", ".png", 16))
	AddStripes(data.raw["player"]["player"].animations[1].running_with_gun.layers[1], 11, 1, CreateFilePaths("__WaiTex__/graphics/entity/player/player-basic-run-gun/player-basic-run-gun-", ".png", 36))
	
	data.raw["player"]["player"].animations[2].idle.layers[1] = data.raw["player"]["player"].animations[1].idle.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[2].idle.layers[3])
	data.raw["player"]["player"].animations[2].idle_with_gun.layers[1] = data.raw["player"]["player"].animations[1].idle_with_gun.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[2].idle_with_gun.layers[3])
	data.raw["player"]["player"].animations[2].mining_with_hands.layers[1] = data.raw["player"]["player"].animations[1].mining_with_hands.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[2].mining_with_hands.layers[3])
	data.raw["player"]["player"].animations[2].mining_with_tool.layers[1] = data.raw["player"]["player"].animations[1].mining_with_tool.layers[1]
	AddStripes(data.raw["player"]["player"].animations[2].mining_with_tool.layers[3], 13, 1, CreateFilePaths("__WaiTex__/graphics/entity/player/player-armor1-mine-tool/player-armor1-mine-tool-", ".png", 16))
	data.raw["player"]["player"].animations[2].running_with_gun.layers[1] = data.raw["player"]["player"].animations[2].running_with_gun.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[2].running_with_gun.layers[3])
	data.raw["player"]["player"].animations[2].running.layers[1] = data.raw["player"]["player"].animations[2].running.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[2].running.layers[3])
	
	data.raw["player"]["player"].animations[3].idle.layers[1] = data.raw["player"]["player"].animations[1].idle.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[3].idle.layers[3])
	data.raw["player"]["player"].animations[3].idle_with_gun.layers[1] = data.raw["player"]["player"].animations[1].idle_with_gun.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[3].idle_with_gun.layers[3])
	data.raw["player"]["player"].animations[3].mining_with_hands.layers[1] = data.raw["player"]["player"].animations[1].mining_with_hands.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[3].mining_with_hands.layers[3])
	data.raw["player"]["player"].animations[3].mining_with_tool.layers[1] = data.raw["player"]["player"].animations[1].mining_with_tool.layers[1]
	AddStripes(data.raw["player"]["player"].animations[3].mining_with_tool.layers[3], 13, 1, CreateFilePaths("__WaiTex__/graphics/entity/player/player-armor2-mine-tool/player-armor2-mine-tool-", ".png", 16))
	data.raw["player"]["player"].animations[3].running_with_gun.layers[1] = data.raw["player"]["player"].animations[1].running_with_gun.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[3].running_with_gun.layers[3])
	data.raw["player"]["player"].animations[3].running.layers[1] = data.raw["player"]["player"].animations[1].running.layers[1]
	OverrideSprite(data.raw["player"]["player"].animations[3].running.layers[3])
end


--rail-signal
if AllowChange("rail-signal", data.raw["rail-signal"]["rail-signal"].animation) then
	OverrideSprite(data.raw["rail-signal"]["rail-signal"].animation)
end


--roboport
if AllowChange("roboport", data.raw["roboport"]["roboport"].base) then
	OverrideSprite(data.raw["roboport"]["roboport"].base)
	OverrideSprite(data.raw["roboport"]["roboport"].base_patch)
	OverrideSprite(data.raw["roboport"]["roboport"].base_animation)
	OverrideSprite(data.raw["roboport"]["roboport"].door_animation_up)
	OverrideSprite(data.raw["roboport"]["roboport"].door_animation_down)
end


--rocket-silo
if AllowChange("rocket-silo", data.raw["rocket-silo"]["rocket-silo"].hole_sprite) then
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].hole_sprite)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].hole_light_sprite)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].door_back_sprite)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].door_front_sprite)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].base_day_sprite)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].base_night_sprite)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].satellite_animation)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].arm_01_back_animation)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].arm_02_right_animation)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].arm_03_front_animation)
	OverrideSprite(data.raw["rocket-silo"]["rocket-silo"].base_front_sprite)
end


--rocket-silo-rocket
if AllowChange("rocket-silo", data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].rocket_sprite) then
	OverrideSprite(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].rocket_sprite)
	OverrideSprite(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].rocket_flame_animation)
	OverrideSprite(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].rocket_flame_left_animation)
	OverrideSprite(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"].rocket_flame_right_animation)
end


--small-electric-pole
if AllowChange("small-electric-pole", data.raw["electric-pole"]["small-electric-pole"].pictures) then
	OverrideSprite(data.raw["electric-pole"]["small-electric-pole"].pictures)
end

--small-lamp
if AllowChange("small-lamp", data.raw["lamp"]["small-lamp"].picture_on) then
	--OverrideSprite(data.raw["lamp"]["small-lamp"].picture_on)
	OverrideSprite(data.raw["lamp"]["small-lamp"].picture_off)
end


--small-pump
if AllowChange("small-pump", data.raw["pump"]["small-pump"].animations.north) then
	OverrideSprite(data.raw["pump"]["small-pump"].animations.north)
	OverrideSprite(data.raw["pump"]["small-pump"].animations.east)
	OverrideSprite(data.raw["pump"]["small-pump"].animations.south)
	OverrideSprite(data.raw["pump"]["small-pump"].animations.west)
end


--smart-chest
if AllowChange("smart-chest", data.raw["smart-container"]["smart-chest"].picture) then
	OverrideSprite(data.raw["smart-container"]["smart-chest"].picture)
end


--smart-inserter
if AllowChange("smart-inserter", data.raw["inserter"]["smart-inserter"].hand_base_picture) then
	OverrideSprite(data.raw["inserter"]["smart-inserter"].hand_base_picture, 1)
	OverrideSprite(data.raw["inserter"]["smart-inserter"].hand_closed_picture, 1)
	OverrideSprite(data.raw["inserter"]["smart-inserter"].hand_open_picture, 1)
	OverrideSprite(data.raw["inserter"]["smart-inserter"].platform_picture.sheet)
end


--solar-panel
if AllowChange("solar-panel", data.raw["solar-panel"]["solar-panel"].picture) then
	OverrideSprite(data.raw["solar-panel"]["solar-panel"].picture)
end

--biter-spawner
if AllowChange("biter-spawner", data.raw["unit-spawner"]["biter-spawner"].animations[1].layers[1]) then
	AddStripes(data.raw["unit-spawner"]["biter-spawner"].animations[1].layers[1], 4, 1, {
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-1.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-2.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 1))
	ChangeSettings(data.raw["unit-spawner"]["biter-spawner"].animations[1].layers[1], {{"line_length", nil}, {"y", nil}})
	
	AddStripes(data.raw["unit-spawner"]["biter-spawner"].animations[2].layers[1], 4, 1, {
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-3.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-4.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 3))
	ChangeSettings(data.raw["unit-spawner"]["biter-spawner"].animations[2].layers[1], {{"line_length", nil}, {"y", nil}})
	
	AddStripes(data.raw["unit-spawner"]["biter-spawner"].animations[3].layers[1], 4, 1,
	{
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-5.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-6.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 5))
	ChangeSettings(data.raw["unit-spawner"]["biter-spawner"].animations[3].layers[1], {{"line_length", nil}, {"y", nil}})
	
	AddStripes(data.raw["unit-spawner"]["biter-spawner"].animations[4].layers[1], 4, 1, {
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-7.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-8.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 7))
	ChangeSettings(data.raw["unit-spawner"]["biter-spawner"].animations[4].layers[1], {{"line_length", nil}, {"y", nil}})
end


--spitter-spawner
if AllowChange("spitter-spawner", data.raw["unit-spawner"]["spitter-spawner"].animations[1].layers[1]) then
	AddStripes(data.raw["unit-spawner"]["spitter-spawner"].animations[1].layers[1], 4, 1, {
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-1.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-2.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 1))
	ChangeSettings(data.raw["unit-spawner"]["spitter-spawner"].animations[1].layers[1], {{"line_length", nil}, {"y", nil}})
	
	AddStripes(data.raw["unit-spawner"]["spitter-spawner"].animations[2].layers[1], 4, 1, {
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-3.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-4.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 3))
	ChangeSettings(data.raw["unit-spawner"]["spitter-spawner"].animations[2].layers[1], {{"line_length", nil}, {"y", nil}})
	
	AddStripes(data.raw["unit-spawner"]["spitter-spawner"].animations[3].layers[1], 4, 1,
	{
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-5.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-6.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 5))
	ChangeSettings(data.raw["unit-spawner"]["spitter-spawner"].animations[3].layers[1], {{"line_length", nil}, {"y", nil}})
	
	AddStripes(data.raw["unit-spawner"]["spitter-spawner"].animations[4].layers[1], 4, 1, {
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-7.png",
		"__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-8.png",
	})-- CreateFilePaths("__WaiTex__/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png", 2, 7))
	ChangeSettings(data.raw["unit-spawner"]["spitter-spawner"].animations[4].layers[1], {{"line_length", nil}, {"y", nil}})
end


--steam-engine
if AllowChange("steam-engine", data.raw["generator"]["steam-engine"].horizontal_animation) then
	AddStripes(data.raw["generator"]["steam-engine"].horizontal_animation, 4, 2, CreateFilePaths("__WaiTex__/graphics/entity/steam-engine/steam-engine-horizontal-", ".png", 4))
	data.raw["generator"]["steam-engine"].horizontal_animation.line_length = nil
	AddStripes(data.raw["generator"]["steam-engine"].vertical_animation, 4, 4, CreateFilePaths("__WaiTex__/graphics/entity/steam-engine/steam-engine-vertical-", ".png", 2))
	data.raw["generator"]["steam-engine"].vertical_animation.line_length = nil
end


--steel-chest
if AllowChange("steel-chest", data.raw["container"]["steel-chest"].picture) then
	OverrideSprite(data.raw["container"]["steel-chest"].picture)
end


--steel-furnace
if AllowChange("steel-furnace", data.raw["furnace"]["steel-furnace"].animation) then
	OverrideSprite(data.raw["furnace"]["steel-furnace"].animation)
	OverrideSprite(data.raw["furnace"]["steel-furnace"].working_visualisations[1].animation)
end


--stone-ore
if AllowChange("stone", data.raw["resource"]["stone"].stages.sheet) then
	OverrideSprite(data.raw["resource"]["stone"].stages.sheet)
end


--stone-furnace
if AllowChange("stone-furnace", data.raw["furnace"]["stone-furnace"].animation) then
	OverrideSprite(data.raw["furnace"]["stone-furnace"].animation)
	OverrideSprite(data.raw["furnace"]["stone-furnace"].working_visualisations[1].animation)
end


--stone-wall
if AllowChange("stone-wall", data.raw["wall"]["stone-wall"].pictures.single.layers[1]) then
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.single.layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.single.layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_vertical[1].layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_vertical[1].layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_vertical[2].layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_vertical[2].layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_vertical[3].layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_vertical[3].layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_horizontal[1].layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_horizontal[1].layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_horizontal[2].layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_horizontal[2].layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_horizontal[3].layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.straight_horizontal[3].layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.corner_right_down.layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.corner_right_down.layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.corner_left_down.layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.corner_left_down.layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.t_up.layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.t_up.layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.ending_right.layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.ending_right.layers[2])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.ending_left.layers[1])
	OverrideSprite(data.raw["wall"]["stone-wall"].pictures.ending_left.layers[2])
	--stone-wall-remnants
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[1])
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[2])
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[3])
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[4])
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[5])
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[6])
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[7])
	OverrideSprite(data.raw["corpse"]["wall-remnants"].animation[8])
end


--storage-tank
if AllowChange("storage-tank", data.raw["storage-tank"]["storage-tank"].pictures.picture.sheet) then
	OverrideSprite(data.raw["storage-tank"]["storage-tank"].pictures.picture.sheet)
end


--straight-rail
if AllowChange("straight-rail", data.raw["rail"]["straight-rail"].pictures["straight_rail_horizontal"]["metals"]) then
	--OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_horizontal"]["metals"])
	OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_horizontal"]["backplates"])
	OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_horizontal"]["ties"])
	--OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_vertical"]["metals"])
	OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_vertical"]["backplates"])
	OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_vertical"]["ties"])
	--OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_diagonal"]["metals"])
	OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_diagonal"]["backplates"])
	OverrideSprite(data.raw["rail"]["straight-rail"].pictures["straight_rail_diagonal"]["ties"])
end


--substation
if AllowChange("substation", data.raw["electric-pole"]["substation"].pictures) then
	OverrideSprite(data.raw["electric-pole"]["substation"].pictures)
end


--tank
if AllowChange("tank", data.raw["car"]["tank"].animation.layers[1].stripes[1]) then
	ScaleSprite(data.raw["car"]["tank"].animation.layers[1])
	ChangeAnimation(data.raw["car"]["tank"].animation.layers[1].stripes[1], 4, 8)
	ChangeAnimation(data.raw["car"]["tank"].animation.layers[1].stripes[2], 4, 8)
	ChangeAnimation(data.raw["car"]["tank"].animation.layers[1].stripes[3], 4, 8)
	ChangeAnimation(data.raw["car"]["tank"].animation.layers[1].stripes[4], 4, 8)
	OverrideSprite(data.raw["car"]["tank"].turret_animation.layers[1])
end


--train-stop
if AllowChange("train-stop", data.raw["train-stop"]["train-stop"].animations.north) then
	OverrideSprite(data.raw["train-stop"]["train-stop"].animations.north)
	OverrideSprite(data.raw["train-stop"]["train-stop"].animations.east)
	OverrideSprite(data.raw["train-stop"]["train-stop"].animations.south)
	OverrideSprite(data.raw["train-stop"]["train-stop"].animations.west)
end


--tree
if AllowChange("tree", data.raw["tree"]["tree-01"].variations[1].leaves) then
	for k,trees in pairs(data.raw["tree"]) do
		if trees.variations then
			for k1, treeVariations in pairs(trees.variations) do
				OverrideSprite(treeVariations.leaves)
				local filename = treeVariations.trunk.filename
				filename = string.gsub(filename, ".png", "") -- not good to have it here... oh well
				filename = string.gsub(filename, "__base__", "__WaiTex__")
			
				AddStripes(treeVariations.trunk, nil, nil, 
				{
					{filename.."-1.png", 3, 1},
					{filename.."-2.png", 2, 1}
				})
			end
		end
	end
end


--wooden-chest
if AllowChange("wooden-chest", data.raw["container"]["wooden-chest"].picture) then
	OverrideSprite(data.raw["container"]["wooden-chest"].picture)
end
]]--









