--Allowed textures to change

local AvailableGB = 3
MOD_NAME = "__WaiTex_Full__"
--MOD_NAME = "__WaiTex_2GB__"
--MOD_NAME = "__WaiTex_1GB__"

local TexturePermissions =
{
	["assembling-machine-1"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["assembling-machine-2"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["assembling-machine-3"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["beacon"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["inserter"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["electric-mining-drill"] = 			{["enabled"] = true, ["requiredGB"] = 1},
	["splitter"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["transport-belt"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["transport-belt-to-ground"] = 			{["enabled"] = true, ["requiredGB"] = 1},
	["accumulator"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["beam"] = 								{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["blood-particle"] = 					{["enabled"] = false,["requiredGB"] = 3}, --1GB  
	["blue-laser"] = 						{["enabled"] = false,["requiredGB"] = 3}, --1GB  
	["branch-particle"] = 					{["enabled"] = false,["requiredGB"] = 3}, --1GB  
	["big-electric-pole"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["boiler"] = 							{["enabled"] = false,["requiredGB"] = 1},  --WIP
	["burner-inserter"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["burner-mining-drill"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["car"] = 								{["enabled"] = true, ["requiredGB"] = 2}, --1GB
	["cargo-wagon"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB --UPDATED
	["chemical-plant"] = 					{["enabled"] = true, ["requiredGB"] = 1}, 
	["coal"] = 								{["enabled"] = true, ["requiredGB"] = 1},
	["coal-particle"] = 					{["enabled"] = false,["requiredGB"] = 3}, --1GB  
	["copper-ore-particle"] = 				{["enabled"] = false,["requiredGB"] = 3}, --1GB  
	["crude-oil"] = 						{["enabled"] = true, ["requiredGB"] = 1},  
	["defender"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["destroyer"] = 						{["enabled"] = true, ["requiredGB"] = 1}, --UPDATED
	["distractor"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["construction-robot"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["copper-ore"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["curved-rail"] = 						{["enabled"] = true, ["requiredGB"] = 1},  
	["decorative"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["diesel-locomotive"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB --UPDATED
	["electric-furnace"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["express-splitter"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["express-transport-belt"] =		 	{["enabled"] = true, ["requiredGB"] = 1}, 
	["express-transport-belt-to-ground"] = 	{["enabled"] = true, ["requiredGB"] = 1},
	["explosion"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["explosion-gunshot"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["explosion-hit"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["explosive-rocket"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["fast-inserter"] = 					{["enabled"] = true, ["requiredGB"] = 1}, 
	["filter-inserter"] = 					{["enabled"] = true, ["requiredGB"] = 1}, --NEW
	["stack-inserter"] = 					{["enabled"] = true, ["requiredGB"] = 1}, --NEW
	["stack-filter-inserter"] = 			{["enabled"] = true, ["requiredGB"] = 1}, --NEW
	["fast-splitter"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["fast-transport-belt"] =			 	{["enabled"] = true, ["requiredGB"] = 1}, 
	["fast-transport-belt-to-ground"] = 	{["enabled"] = true, ["requiredGB"] = 1},
	["filter-inserter"] = 					{["enabled"] = true, ["requiredGB"] = 1}, --NEW
	["gate"] = 								{["enabled"] = true, ["requiredGB"] = 1},
	["gun-turret"] = 						{["enabled"] = true, ["requiredGB"] = 1}, 
	["iron-chest"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["iron-ore"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["lab"] = 								{["enabled"] = true, ["requiredGB"] = 1},
	["land-mine"] = 						{["enabled"] = true, ["requiredGB"] = 1},  
	["laser-turret"] = 						{["enabled"] = true, ["requiredGB"] = 2}, --1GB 
	["logistic-chest-passive-provider"] = 	{["enabled"] = true, ["requiredGB"] = 1},
	["logistic-chest-active-provider"] = 	{["enabled"] = true, ["requiredGB"] = 1},
	["logistic-chest-storage"] = 			{["enabled"] = true, ["requiredGB"] = 1},
	["logistic-chest-requester"] = 			{["enabled"] = true, ["requiredGB"] = 1},
	["logistic-robot"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["long-handed-inserter"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["market"] = 							{["enabled"] = true, ["requiredGB"] = 1},  
	["medium-electric-pole"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["medium-explosion"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["offshore-pump"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["oil-refinery"] = 						{["enabled"] = true, ["requiredGB"] = 1}, 
	["pipe"] = 								{["enabled"] = true, ["requiredGB"] = 1},
	["pipe-covers"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["pipe-to-ground"] = 					{["enabled"] = true, ["requiredGB"] = 1},
	["power-switch"] = 						{["enabled"] = true, ["requiredGB"] = 1}, --NEW
	["pumpjack"] = 							{["enabled"] = true, ["requiredGB"] = 3},
	["radar"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["rail-chain-signal"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["remnants"] = 							{["enabled"] = true, ["requiredGB"] = 3},  
	["player"] = 							{["enabled"] = true, ["requiredGB"] = 3}, --cropcache.dat --1GB 
	["rail-signal"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["roboport"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["rocket-silo"] = 						{["enabled"] = true, ["requiredGB"] = 2}, --1GB
	["rocket-silo-rocket"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB
	["small-electric-pole"] = 				{["enabled"] = true, ["requiredGB"] = 1},
	["small-lamp"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["small-pump"] = 						{["enabled"] = true, ["requiredGB"] = 1}, 
	["scorchmark"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["slowdown-sticker"] = 					{["enabled"] = true, ["requiredGB"] = 3},  
	["ship-wreck"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["smart-chest"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["smart-inserter"] = 					{["enabled"] = true, ["requiredGB"] = 1}, 
	["solar-panel"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["sparks"] = 							{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["smoke"] = 							{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["smoke-construction"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["smoke-fast"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["stack-filter-inserter"] = 			{["enabled"] = true, ["requiredGB"] = 1}, --NEW
	["stack-inserter"] = 					{["enabled"] = true, ["requiredGB"] = 1}, --NEW
	["steam-engine"] = 						{["enabled"] = true, ["requiredGB"] = 2}, --1GB
	["steel-chest"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["steel-furnace"] = 					{["enabled"] = true, ["requiredGB"] = 1}, --UPDATED
	["stone"] = 							{["enabled"] = true, ["requiredGB"] = 1},
	["stone-particle"] = 					{["enabled"] = true, ["requiredGB"] = 3},  
	["stone-furnace"] = 					{["enabled"] = true, ["requiredGB"] = 1}, --UPDATED
	["stone-wall"] = 						{["enabled"] = true, ["requiredGB"] = 1}, 
	["storage-tank"] = 						{["enabled"] = true, ["requiredGB"] = 1}, 
	["straight-rail"] = 					{["enabled"] = true, ["requiredGB"] = 1},    
	["substation"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["tank"] = 								{["enabled"] = true, ["requiredGB"] = 3}, --1GB
	["train-stop"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	["tree"] = 								{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["water-splash"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB  
	["wooden-chest"] = 						{["enabled"] = true, ["requiredGB"] = 1},
	
	--fire and smoke
	["fire-flame"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-flame-on-tree"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-smoke-without-glow"] = 			{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-smoke-without-glow"] = 			{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["soft-fire-smoke"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-smoke-on-adding-fuel"] = 		{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-sticker"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["handheld-flamethrower-fire-stream"] = {["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-flame"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-flame"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-flame"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["sticker"] = 	--[[fire]]				{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-flame"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fire-smoke"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["stream"] = 							{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["flame-thrower-explosion"] = 			{["enabled"] = true, ["requiredGB"] = 3}, 
	["flamethrower-fire-stream"] = 			{["enabled"] = true, ["requiredGB"] = 3}, --NEW
	["fluid-turret"] = 						{["enabled"] = true, ["requiredGB"] = 2}, --NEW
	
	--biters
	["small-biter"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["medium-biter"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["big-biter"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["behemoth-biter"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	--corpses
	["small-biter-corpse"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["medium-biter-corpse"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["big-biter-corpse"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["behemoth-biter-corpse"] = 			{["enabled"] = true, ["requiredGB"] = 3}, --1GB 	
	
	--spitters
	["small-spitter"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["medium-spitter"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["big-spitter"] = 						{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["behemoth-spitter"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	--corpses
	["small-spitter-corpse"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["medium-spitter-corpse"] = 			{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["big-spitter-corpse"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["behemoth-spitter-corpse"] = 			{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	
	--worm
	["small-worm-turret"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["medium-worm-turret"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["big-worm-turret"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	--corpse
	["small-worm-corpse"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["medium-worm-corpse"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["big-worm-corpse"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	
	--spawners
	["biter-spawner"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["spitter-spawner"] = 					{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	--corpse
	["biter-spawner-corpse"] = 				{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	["spitter-spawner-corpse"] = 			{["enabled"] = true, ["requiredGB"] = 3}, --1GB 
	
	-- Fixed tree bug
}

function AllowChange(name)
	if TexturePermissions[name] == nil then
		return true
	end
	local tex = TexturePermissions[name]
	return (tex.enabled and (AvailableGB >= tex.requiredGB))
end