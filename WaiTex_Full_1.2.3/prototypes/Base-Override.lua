require("prototypes.Override-Functions")

local ChangeTextureConfiguration = 
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
	["__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png"] = function(t)  OverrideAnimation(t[#t], 4) end,
		--assembler-pipes
	["__base__/graphics/entity/assembling-machine-3/pipe-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-3/pipe-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-3/pipe-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/assembling-machine-3/pipe-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[beacon]]--
	["__base__/graphics/entity/beacon/beacon-base.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beacon/beacon-antenna.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[electric-mining-drill]]--
	["__base__/graphics/entity/electric-mining-drill/north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/electric-mining-drill/east.png"] = function(t)  ManualOverrideSprite(t[#t], 256, 200, 2) end,
	["__base__/graphics/entity/electric-mining-drill/south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/electric-mining-drill/west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[splitter]]--
	["__base__/graphics/entity/splitter/splitter-north.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/splitter/splitter-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/splitter/splitter-south.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/splitter/splitter-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[transport-belt]]--
	["__base__/graphics/entity/transport-belt/transport-belt.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[underground-belt]]--
	["__base__/graphics/entity/underground-belt/underground-belt-structure.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[accumulator]]--
	["__base__/graphics/entity/accumulator/accumulator.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/accumulator/accumulator-charge-animation.png"] = function(t)
		t[#t].layers = 
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
						filename = MOD_NAME.."/graphics/entity/accumulator/accumulator.png",
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
				filename = MOD_NAME.."/graphics/entity/accumulator/accumulator-charge-sparks.png",
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
	["__base__/graphics/entity/accumulator/accumulator-discharge-animation.png"] = function(t)
		t[#t].layers = 
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
						filename = MOD_NAME.."/graphics/entity/accumulator/accumulator.png",
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
				filename = MOD_NAME.."/graphics/entity/accumulator/accumulator-discharge-sparks.png",
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
	
	
	--[[beam]]--
	["__base__/graphics/entity/beam/beam-head.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beam/beam-tail.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beam/beam-body-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beam/beam-body-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beam/beam-body-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beam/beam-body-4.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beam/beam-body-5.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/beam/beam-body-6.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[blood-particle]]--
	["__base__/graphics/entity/blood-particle/blood-particle-01.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-02.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-03.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-04.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-05.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-06.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-07.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-08.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-09.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-10.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-11.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-12.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/blood-particle/blood-particle-13.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[blue-laser]]--
	["__base__/graphics/entity/blue-laser/blue-laser.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[branch-particle]]--
	["__base__/graphics/entity/branch-particle/branch-particle-01.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-02.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-03.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-04.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-05.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-06.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-07.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-08.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-09.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-10.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-11.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-12.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-13.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-14.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-15.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-16.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-17.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-18.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-19.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-20.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-21.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-22.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-23.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-24.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-25.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-26.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-27.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-28.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/branch-particle/branch-particle-29.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[big-electric-pole]]--
	["__base__/graphics/entity/big-electric-pole/big-electric-pole.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[big-biter]]--
	["__base__/graphics/entity/biter/biter-run-1.png"] = function(t) 
		if #t > 2 then
			local part1 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-run-1/biter-run-1-", ".png", 128)
			local part2 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-run-2/biter-run-2-", ".png", 128)
			local combined = StripMerge({part1, part2}, 16, {8, 8})
			
			AddStripes(t[#t - 2], 1, 1, combined)
		end
	end,
	["__base__/graphics/entity/biter/biter-run-mask1.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-run-mask1/biter-run-mask1-", ".png", 256))
	end,
	["__base__/graphics/entity/biter/biter-run-mask2.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-run-mask2/biter-run-mask2-", ".png", 256))
	end,
	["__base__/graphics/entity/biter/biter-attack-1.png"] = function(t) 
		if #t > 2 then
			local part1 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-attack-1/biter-attack-1-", ".png", 48)
			local part2 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-attack-2/biter-attack-2-", ".png", 40)
			local part3 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-attack-3/biter-attack-3-", ".png", 48)
			local part4 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-attack-4/biter-attack-4-", ".png", 40)
			local combined1 = StripMerge({part1, part2}, 8, {6, 5})
			local combined2 = StripMerge({part3, part4}, 8, {6, 5})
			local combined  = MergeTables({combined1, combined2})
			
			AddStripes(t[#t - 2], 1, 1, combined)
		end
	end,
	["__base__/graphics/entity/biter/biter-attack-mask1.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-attack-mask1/biter-attack-mask1-", ".png", 176))
	end,
	["__base__/graphics/entity/biter/biter-attack-mask2.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-attack-mask2/biter-attack-mask2-", ".png", 176))
	end,
	["__base__/graphics/entity/biter/biter-die-1.png"] = function(t) 
		if #t > 2 then
			local part1 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-die-1/biter-die-1-", ".png", 72)
			local part2 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-die-2/biter-die-2-", ".png", 64)
			local part3 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-die-3/biter-die-3-", ".png", 72)
			local part4 = CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-die-4/biter-die-4-", ".png", 64)
			local combined1 = StripMerge({part1, part2}, 8, {9, 8})
			local combined2 = StripMerge({part3, part4}, 8, {9, 8})
			local combined  = MergeTables({combined1, combined2})
			
			AddStripes(t[#t - 2], 1, 1, combined)
		end
	end,
	["__base__/graphics/entity/biter/biter-die-mask1.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-die-mask1/biter-die-mask1-", ".png", 272))
	end,
	["__base__/graphics/entity/biter/biter-die-mask2.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/biter/biter-die-mask2/biter-die-mask2-", ".png", 272))
	end,
	
	
	--[[boiler]]--
	["__base__/graphics/entity/boiler/boiler-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-left-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-right-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-left-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-right-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-t-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/boiler/boiler-t-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[burner-mining-drill]]--
	["__base__/graphics/entity/burner-mining-drill/north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/burner-mining-drill/east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/burner-mining-drill/south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/burner-mining-drill/west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[car]]--
	["__base__/graphics/entity/car/car-1.png"] = function(t)
		if #t > 1 and t[#t - 2].stripes ~= nil then
			ScaleSprite(t[#t - 2])
			ChangeAnimation(t[#t], 4, 11)
			ChangeAnimation(t[#t - 2].stripes[2], 4, 11)
			ChangeAnimation(t[#t - 2].stripes[3], 4, 10)
		end
	end,
	["__base__/graphics/entity/car/car-turret.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[cargo-wagon]]--
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-1.png"]                         = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-2.png"]                         = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-3.png"]                         = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-4.png"]                         = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-1.png"]                    = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-2.png"]                    = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-3.png"]                    = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-1.png"]                  = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-2.png"]                  = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-3.png"]				   = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-4.png"]				   = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png"]       = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png"]      = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png"]       = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png"]  = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png"]         = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png"]        = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png"]   = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png"]         = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png"]    = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[chemical-plant]]--
	["__base__/graphics/entity/chemical-plant/chemical-plant.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[coal]]--
	["__base__/graphics/entity/coal/coal.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[coal-particle]]--
	["__base__/graphics/entity/coal-particle/coal-particle-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/coal-particle/coal-particle-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/coal-particle/coal-particle-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/coal-particle/coal-particle-4.png"] = function(t)  OverrideSprite(t[#t]) end,

	
	--[[copper-ore-particle]]--
	["__base__/graphics/entity/copper-ore-particle/copper-ore-particle-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/copper-ore-particle/copper-ore-particle-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/copper-ore-particle/copper-ore-particle-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/copper-ore-particle/copper-ore-particle-4.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[combinator]]--
	["__base__/graphics/entity/combinator/combinator-entities.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[arithmetic lights]]--
	["__base__/graphics/entity/combinator/combinator-led-arithmetic-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-arithmetic-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-arithmetic-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-arithmetic-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[constant lights]]--
	["__base__/graphics/entity/combinator/combinator-led-constant-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-constant-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-constant-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-constant-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[decider lights]]--
	["__base__/graphics/entity/combinator/combinator-led-decider-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-decider-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-decider-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/combinator/combinator-led-decider-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[connector]]--
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-h.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-ne.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-nw.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-se.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-sw.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-v.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-x.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-shadow-h.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-shadow-ne.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-shadow-nw.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-shadow-se.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-shadow-sw.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-shadow-v.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-shadow-x.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-scanner.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-scanner-nw-ne.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/transport-belt/connector/transport-belt-connector-frame-main-scanner-sw-se.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[circuit-connector]]--
	["__base__/graphics/entity/circuit-connector/circuit-connector-main.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-led-red.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-led-green.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-led-blue.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-logistic-animation.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-inserter-main.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-inserter-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-inserter-led-red.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-inserter-led-green.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-inserter-led-blue.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/circuit-connector/circuit-connector-logistic-animation.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[crude-oil]]--
	["__base__/graphics/entity/crude-oil/crude-oil.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[defender]]--
	["__base__/graphics/entity/defender-robot/defender-robot.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[destroyer]]--
	["__base__/graphics/entity/destroyer-robot/destroyer-robot.png"] = function(t)
		AddStripes(t[#t], 16, 2, CreateFilePaths(MOD_NAME.."/graphics/entity/destroyer-robot/destroyer-robot-", ".png", 2))
		t[#t].line_length = 16
		t[#t].y = nil
	end,
	["__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[distractor]]--
	["__base__/graphics/entity/distractor-robot/distractor-robot.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[construction-robot]]--
	["__base__/graphics/entity/construction-robot/construction-robot.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/construction-robot/construction-robot-working.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[copper-ore]]--
	["__base__/graphics/entity/copper-ore/copper-ore.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[curved-rail]]--
	["__base__/graphics/entity/curved-rail/curved-rail-vertical-metals.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/curved-rail/curved-rail-vertical-backplates.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/curved-rail/curved-rail-vertical-ties.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/curved-rail/curved-rail-vertical-metals-remnants.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/curved-rail/curved-rail-vertical-stone-path.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/curved-rail/curved-rail-horizontal-backplates.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/curved-rail/curved-rail-horizontal-ties.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/curved-rail/curved-rail-horizontal-metals-remnants.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/curved-rail/curved-rail-horizontal-stone-path.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[decorative]]--
	["__base__/graphics/entity/decorative/brown-asterisk/brown-asterisk-01.png"] = 		   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/brown-cane-cluster/brown-cane-cluster-01.png"] = function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/brown-cane-single/brown-cane-single-01.png"] =   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/brown-carpet-grass/brown-carpet-grass-01.png"] = function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/brown-coral-mini/brown-coral-mini-01.png"] =     function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/brown-fluff/brown-fluff-01.png"] = 			   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/brown-fluff-dry/brown-fluff-dry-01.png"] = 	   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/brown-hairy-grass/brown-hairy-grass-01.png"] =   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/garballo/garballo-01.png"] = 					   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/garballo-mini-dry/garballo-mini-dry-01.png"] =   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/green-asterisk/green-asterisk-01.png"] = 		   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/green-bush-mini/green-bush-mini-01.png"] = 	   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/green-carpet-grass/green-carpet-grass-01.png"] = function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/green-coral-mini/green-coral-mini-01.png"] = 	   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/green-hairy-grass/green-hairy-grass-01.png"] =   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	--["__base__/graphics/entity/decorative/green-pita/green-pita-01.png"] = 				   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	--["__base__/graphics/entity/decorative/green-pita-mini/green-pita-mini-01.png"] =       function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/green-small-grass/green-small-grass-01.png"] =   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/orange-coral-mini/orange-coral-mini-01.png"] =   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/red-asterisk/red-asterisk-01.png"] = 			   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,	
	["__base__/graphics/entity/decorative/roots/root-A-01.png"] = 						   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/roots/root-B-01.png"] = 						   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-01.png"] = 	   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,
	["__base__/graphics/entity/decorative/stone-rock/stone-rock-01.png"] = 				   function(t) if #t > 1 then OverrideAllSprites(t[#t - 1]) end end,	
	
	
	--[[diesel-locomotive]]--
	--["__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png"] = function(t)
	--	TextureToSpritesConverter(t[#t - 1], MOD_NAME.."/graphics/entity/diesel-locomotive/diesel-locomotive/diesel-locomotive-0&/diesel-locomotive-0&-", ".png")
	--end,
	--["__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png"] = function(t)
	--	TextureToSpritesConverter(t[#t - 1], MOD_NAME.."/graphics/entity/diesel-locomotive/diesel-locomotive-mask/diesel-locomotive-mask-0&/diesel-locomotive-mask-0&-", ".png")
	--end,
	--["__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png"] = function(t)
	--	TextureToSpritesConverter(t[#t - 1], MOD_NAME.."/graphics/entity/diesel-locomotive/diesel-locomotive-shadow/diesel-locomotive-shadow-0&/diesel-locomotive-shadow-0&-", ".png")
	--end,
	--["__base__/graphics/entity/diesel-locomotive/train-wheels-01.png"] = function(t)
	--	TextureToSpritesConverter(t[#t - 1], MOD_NAME.."/graphics/entity/diesel-locomotive/train-wheels/train-wheels-0&/train-wheels-0&-", ".png")
	--end,
	
	--[[electric-furnace]]--
	["__base__/graphics/entity/electric-furnace/electric-furnace-base.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/electric-furnace/electric-furnace-heater.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[express-splitter]]--
	["__base__/graphics/entity/express-splitter/express-splitter-north.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/express-splitter/express-splitter-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/express-splitter/express-splitter-south.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/express-splitter/express-splitter-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[express-transport-belt]]--
	["__base__/graphics/entity/express-transport-belt/express-transport-belt.png"] = function(t)
		if t[#t].direction_count == nil then
			local y = t[#t].y or 0
			AddStripes(t[#t], 16, 1, 
			{
				MOD_NAME.."/graphics/entity/express-transport-belt/express-transport-belt.png",
				MOD_NAME.."/graphics/entity/express-transport-belt/express-transport-belt.png"
			})
			t[#t].stripes[1].y = y * 2
			t[#t].stripes[2].y = (y * 2) + t[#t].height
			t[#t].y = y * 2
			--t[#t].direction_count = 1
			--print(serpent.block(t[#t]))
		else
			OverrideSprite(t[#t])
			t[#t].line_length = 16
			--print("hit hit hit hit")
		end
	end,
	
	
	--[[express-underground-belt]]--
	["__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[explosion]]--
	["__base__/graphics/entity/explosion/explosion-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/explosion/explosion-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/explosion/explosion-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/explosion/explosion-4.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[explosion-gunshot]]--
	["__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[explosion-hit]]--
	["__base__/graphics/entity/explosion-hit/explosion-hit.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[explosive-rocket]]--
	["__base__/graphics/entity/rocket/rocket.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[flame-thrower-explosion]]--
	["__base__/graphics/entity/flame-thrower-explosion/flame-thrower-explosion.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[fast-splitter]]--
	["__base__/graphics/entity/fast-splitter/fast-splitter-north.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/fast-splitter/fast-splitter-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fast-splitter/fast-splitter-south.png"] = function(t)  OverrideAnimation(t[#t], 8) end,
	["__base__/graphics/entity/fast-splitter/fast-splitter-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[fast-transport-belt]]--
	["__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png"] = function(t)
		if t[#t].direction_count == nil then
			local y = t[#t].y or 0
			AddStripes(t[#t], 16, 1, 
			{
				MOD_NAME.."/graphics/entity/fast-transport-belt/fast-transport-belt.png",
				MOD_NAME.."/graphics/entity/fast-transport-belt/fast-transport-belt.png"
			})
			t[#t].stripes[1].y = y * 2
			t[#t].stripes[2].y = (y * 2) + t[#t].height
			t[#t].y = y * 2
		else
			OverrideSprite(t[#t])
			t[#t].line_length = 16
		end
	end,
	
	
	--[[fire-flame]]--
	["__base__/graphics/entity/fire-flame/fire-flame-1.png"] = function(t)  OverrideSprite(t[#t]) print("stuff") end,
	["__base__/graphics/entity/fire-flame/fire-flame-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-4.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-5.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-6.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-7.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-8.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-9.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-10.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-11.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-12.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-flame-13.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/tree-fire-flame-01-a.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/tree-fire-flame-01-b.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/tree-fire-flame-01-c.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/tree-fire-flame-03-a.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/tree-fire-flame-03-b.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/tree-fire-flame-03-c.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/burnt-patch.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-smoke-source-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/fire-flame/fire-smoke-source-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[fire-smoke]]--
	["__base__/graphics/entity/fire-smoke/fire-smoke.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/fire-smoke/fire-smoke/fire-smoke-")
	end,
	["__base__/graphics/entity/fire-smoke/fire-smoke-glow.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/fire-smoke/fire-smoke-glow/fire-smoke-glow-")
	end,
	
	
	--[[flamethrower-fire-stream]]--
	["__base__/graphics/entity/flamethrower-fire-stream/flamethrower-fire-stream-spine.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[flamethrower-turret]]--
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-east-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-east-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-north-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-north-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-south-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-south-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-west-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-base-west-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-active.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-extension.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-extension-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-extension-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-gun-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-led-indicator-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-led-indicator-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-led-indicator-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-led-indicator-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/flamethrower-turret/flamethrower-turret-muzzle-fire.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[fast-transport-belt-to-ground]]--
	["__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[gate]]--
	["__base__/graphics/entity/gate/gate-vertical.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-vertical-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-horizontal.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-horizontal-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-base-vertical.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-base-vertical-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-rail-horizontal-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-rail-horizontal-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-rail-vertical-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-rail-vertical-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-rail-base-vertical.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-rail-base-horizontal.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-rail-base-mask-vertical.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/gate-rail-base-mask-horizontal.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-base-horizontal.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/gate-base-horizontal-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/wall-patch-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/wall-patch-north-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/wall-patch-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/wall-patch-east-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/wall-patch-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/wall-patch-south-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/wall-patch-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/gate/wall-patch-west-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/wall-diode-green.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gate/wall-diode-red.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[gun-turret]]--
	["__base__/graphics/entity/gun-turret/gun-turret-gun-extension.png"] = function(t)  OverrideSprite(t[#t]) end,
		["__base__/graphics/entity/gun-turret/gun-turret-base.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/gun-turret/gun-turret-gun-1.png"] = function(t)
		if #t > 2 then
			AddStripes(t[#t - 2], t[#t - 2].frame_count, 16, CreateFilePaths(MOD_NAME.."/graphics/entity/gun-turret/gun-turret-gun-", ".png", 4))
		end
	end,
	["__base__/graphics/entity/gun-turret/gun-turret-gun-mask.png"] = function(t)
		AddStripes(t[#t], t[#t].frame_count, 32, CreateFilePaths(MOD_NAME.."/graphics/entity/gun-turret/gun-turret-gun-mask-", ".png", 2))
	end,
	
	
	--[[inserters]]--
	--[[inserter]]--
	["__base__/graphics/entity/inserter/inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/inserter/inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/inserter/inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/inserter/inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[burner-inserter]]--
	["__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/burner-inserter/burner-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[fast-inserter]]--
	["__base__/graphics/entity/fast-inserter/fast-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/fast-inserter/fast-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/fast-inserter/fast-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/fast-inserter/fast-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[filter-inserter]]--
	["__base__/graphics/entity/filter-inserter/filter-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/filter-inserter/filter-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/filter-inserter/filter-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/filter-inserter/filter-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[stack-inserter]]--
	["__base__/graphics/entity/stack-inserter/stack-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/stack-inserter/stack-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/stack-inserter/stack-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/stack-inserter/stack-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[stack-filter-inserter]]--
	["__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/stack-filter-inserter/stack-filter-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[iron-chest]]--
	["__base__/graphics/entity/iron-chest/iron-chest.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[iron-ore]]--
	["__base__/graphics/entity/iron-ore/iron-ore.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[iron-ore-particle]]--
	["__base__/graphics/entity/iron-ore-particle/iron-ore-particle-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/iron-ore-particle/iron-ore-particle-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/iron-ore-particle/iron-ore-particle-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/iron-ore-particle/iron-ore-particle-4.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[lab]]--
	["__base__/graphics/entity/lab/lab.png"] = function(t)
		if t[#t].line_length ~= nil then
			OverrideAnimation(t[#t], 3)
		else
			OverrideSprite(t[#t])
		end
	end,
	
	
	--[[land-mine]]--
	["__base__/graphics/entity/land-mine/land-mine.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/land-mine/land-mine-set.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[laser-turret]]--
	["__base__/graphics/entity/laser-turret/laser-turret-base.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/laser-turret/laser-turret-gun.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/laser-turret/laser-turret-gun-start.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[logistic-chest-passive-provider]]--
	["__base__/graphics/entity/logistic-chest/logistic-chest-passive-provider.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[logistic-chest-active-provider]]--
	["__base__/graphics/entity/logistic-chest/logistic-chest-active-provider.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[logistic-chest-storage]]--
	["__base__/graphics/entity/logistic-chest/logistic-chest-storage.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[logistic-chest-requester]]--
	["__base__/graphics/entity/logistic-chest/logistic-chest-requester.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[logistic-robot]]--
	["__base__/graphics/entity/logistic-robot/logistic-robot.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[long-handed-inserter]]--
	["__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png"] = function(t)  OverrideSprite(t[#t], 1) end,
	["__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[market]]--
	["__base__/graphics/entity/market/market.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[medium-electric-pole]]--
	["__base__/graphics/entity/medium-electric-pole/medium-electric-pole.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[medium-explosion]]--
	["__base__/graphics/entity/medium-explosion/medium-explosion.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[offshore-pump]]--
	["__base__/graphics/entity/offshore-pump/offshore-pump.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[oil-refinery]]--
	["__base__/graphics/entity/oil-refinery/oil-refinery.png"] = function(t)
		if #t > 1 and t[#t - 1].north ~= nil and t[#t - 1].east ~= nil and t[#t - 1].west ~= nil and t[#t - 1].south ~= nil then
			OverrideAllSprites(t[#t - 1])
			t[#t - 1].south.x = 0
			t[#t - 1].south.y = t[#t - 1].south.height
			t[#t - 1].west.x = t[#t - 1].west.width
			t[#t - 1].west.y = t[#t - 1].west.height
		end
	end,
	
	
	--[[pipe]]--
	["__base__/graphics/entity/pipe/pipe-straight-vertical.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-straight-vertical-window.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-straight-horizontal-window.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-straight-horizontal.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-corner-up-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-corner-up-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-corner-down-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-corner-down-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-t-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-t-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-t-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-t-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-cross.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-ending-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-ending-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-ending-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-ending-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-horizontal-window-background.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe/pipe-vertical-window-background.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/pipe/fluid-background.png"] = function(t)  OverrideSprite(t[#t]) end,
	
		
	--[["pipe-covers"]]--
	["__base__/graphics/entity/pipe-covers/pipe-cover-north.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe-covers/pipe-cover-east.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe-covers/pipe-cover-south.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe-covers/pipe-cover-west.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[pipe-to-ground]]--
	["__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[power-switch]]--
	["__base__/graphics/entity/power-switch/power-switch.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/power-switch/power-switch-electricity-start.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/power-switch/power-switch-electricity-loop.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/power-switch/power-switch-led.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[pumpjack]]--
	["__base__/graphics/entity/pumpjack/pumpjack-base.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/pumpjack/pumpjack-animation.png"] = function(t) 
		OverrideSprite(t[#t])
		t[#t].line_length = 5
	end,
	
	
	--[[radar]]--
	["__base__/graphics/entity/radar/radar.png"] = function(t)
		ScaleSprite(t[#t])
		t[#t].direction_count = 64
		t[#t].lines_per_file = 1
		t[#t].line_length = 4
		t[#t].filename = nil
		t[#t].filenames = CreateFilePaths(MOD_NAME.."/graphics/entity/radar/radar", ".png", 16)
	end,
	
	
	--[[rail-chain-signal]]--
	["__base__/graphics/entity/rail-chain-signal/rail-chain-signal.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rail-chain-signal/rail-chain-signal-metal.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[remnants]]--
	["__base__/graphics/entity/remnants/big-remnants.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/remnants/medium-remnants.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/remnants/small-remnants.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/remnants/big-remnants-ground-patch.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/remnants/medium-remnants-ground-patch.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/remnants/small-remnants-ground-patch.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[player]]--
	["__base__/graphics/entity/player/player-basic-idle.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-idle/player-basic-idle-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-idle-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-idle-color/player-basic-idle-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-idle-gun.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-idle-gun/player-basic-idle-gun-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-idle-gun-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-idle-gun-color/player-basic-idle-gun-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-mine.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-mine/player-basic-mine-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-mine-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-mine-color/player-basic-mine-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-mine-tool.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-mine-tool/player-basic-mine-tool-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-mine-tool-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-mine-tool-color/player-basic-mine-tool-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-run-gun.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-run-gun/player-basic-run-gun-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-run-gun-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-run-gun-color/player-basic-run-gun-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-run.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-run/player-basic-run-", ".png")
	end,
	["__base__/graphics/entity/player/player-basic-run-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-basic-run-color/player-basic-run-color-", ".png")
	end,
	
	["__base__/graphics/entity/player/player-armor1-idle.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-idle/player-armor1-idle-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-idle-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-idle-color/player-armor1-idle-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-idle-gun.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-idle-gun/player-armor1-idle-gun-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-idle-gun-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-idle-gun-color/player-armor1-idle-gun-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-mine.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-mine/player-armor1-mine-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-mine-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-mine-color/player-armor1-mine-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-mine-tool.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-mine-tool/player-armor1-mine-tool-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-mine-tool-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-mine-tool-color/player-armor1-mine-tool-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-run-gun.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-run-gun/player-armor1-run-gun-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-run-gun-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-run-gun-color/player-armor1-run-gun-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-run.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-run/player-armor1-run-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor1-run-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor1-run-color/player-armor1-run-color-", ".png")
	end,
	
	["__base__/graphics/entity/player/player-armor2-idle.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-idle/player-armor2-idle-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-idle-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-idle-color/player-armor2-idle-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-idle-gun.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-idle-gun/player-armor2-idle-gun-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-idle-gun-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-idle-gun-color/player-armor2-idle-gun-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-mine.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-mine/player-armor2-mine-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-mine-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-mine-color/player-armor2-mine-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-mine-tool.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-mine-tool/player-armor2-mine-tool-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-mine-tool-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-mine-tool-color/player-armor2-mine-tool-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-run-gun.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-run-gun/player-armor2-run-gun-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-run-gun-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-run-gun-color/player-armor2-run-gun-color-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-run.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-run/player-armor2-run-", ".png")
	end,
	["__base__/graphics/entity/player/player-armor2-run-color.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/player/player-armor2-run-color/player-armor2-run-color-", ".png")
	end,
	
	
	--[[rail-signal]]--
	["__base__/graphics/entity/rail-signal/rail-signal.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[roboport]]--
	["__base__/graphics/entity/roboport/roboport-base.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/roboport/roboport-base-patch.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/roboport/roboport-base-animation.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/roboport/roboport-door-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/roboport/roboport-door-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[rocket-silo]]--
	["__base__/graphics/entity/rocket-silo/01-hole/01-hole.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/01-hole/01-hole-light.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/04-05-doors/04-door-back.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/04-05-doors/05-door-front.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-day.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-night.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/satellite.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-01-back.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-02-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/13-arm-front-red-lights-front/arm-03-front.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/14-silo-front/14-silo-front.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[rocket-silo-rocket]]--
	["__base__/graphics/entity/rocket-silo/02-11-rocket/02-rocket.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/rocket-silo/10-rocket-under/jet-flame.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[small-electric-pole]]--
	["__base__/graphics/entity/small-electric-pole/small-electric-pole.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[small-lamp]]--
	["__base__/graphics/entity/small-lamp/light-off.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[small-pump]]--
	["__base__/graphics/entity/small-pump/small-pump-up.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/small-pump/small-pump-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/small-pump/small-pump-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/small-pump/small-pump-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[small-lamp]]--
	["__base__/graphics/entity/small-lamp/light-off.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[scorchmark]]--
	["__base__/graphics/entity/scorchmark/small-scorchmark.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[slowdown-sticker]]--
	["__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[ship-wreck]]--
	["__base__/graphics/entity/ship-wreck/big-ship-wreck-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/big-ship-wreck-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/big-ship-wreck-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/big-ship-wreck-grass.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/medium-ship-wreck-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/medium-ship-wreck-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-a.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-b.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-c.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-d.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-e.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-f.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-g.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-h.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-i.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-grass-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-grass-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/ship-wreck/small-ship-wreck-grass-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[solar-panel]]--
	["__base__/graphics/entity/solar-panel/solar-panel.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[sparks]]--
	["__base__/graphics/entity/sparks/sparks-01.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/sparks/sparks-02.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/sparks/sparks-03.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/sparks/sparks-04.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/sparks/sparks-05.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/sparks/sparks-06.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[smoke]]--
	["__base__/graphics/entity/smoke-construction/smoke-01.png"] = function(t)  
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/smoke/smoke/smoke-") 
	end,
	
	
	--[[smoke-construction]]--
	["__base__/graphics/entity/smoke-construction/smoke-01.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[smoke-fast]]--
	["__base__/graphics/entity/smoke-fast/smoke-fast.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[biter-spawner and spitter-spawner]]--
	["__base__/graphics/entity/spawner/spawner-idle.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/spawner/spawner-idle/spawner-idle-", ".png")
	end,
	["__base__/graphics/entity/spawner/spawner-idle-mask.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/spawner/spawner-idle-mask/spawner-idle-mask-", ".png")
	end,
	["__base__/graphics/entity/spawner/spawner-die-01.png"] = function(t)
		if #t > 2 then
			TextureToSpritesConverter(t[#t - 2], MOD_NAME.."/graphics/entity/spawner/spawner-die-0&/spawner-die-0&-")
		end
	end,
	["__base__/graphics/entity/spawner/spawner-die-mask-01.png"] = function(t)
		if #t > 2 then
			TextureToSpritesConverter(t[#t - 2], MOD_NAME.."/graphics/entity/spawner/spawner-die-mask-0&/spawner-die-mask-0&-")
		end
	end,
	
	
	
	
	
	
	
	
	--[[spitter]]--
	["__base__/graphics/entity/spitter/spitter-attack-1.png"] = function(t)
		if #t > 2 then
			TextureToSpritesConverter(t[#t - 2], MOD_NAME.."/graphics/entity/spitter/spitter-attack-&/spitter-attack-&-")
		end
	end,
	["__base__/graphics/entity/spitter/spitter-attack-mask-1.png"] = function(t)
		if #t > 2 then
			TextureToSpritesConverter(t[#t - 2], MOD_NAME.."/graphics/entity/spitter/spitter-attack-mask-&/spitter-attack-mask-&-")
		end
	end,
	["__base__/graphics/entity/spitter/spitter-run-1.png"] = function(t)
		if #t > 2 then
			TextureToSpritesConverter(t[#t - 2], MOD_NAME.."/graphics/entity/spitter/spitter-run-&/spitter-run-&-")
		end
	end,
	["__base__/graphics/entity/spitter/spitter-run-mask.png"] = function(t)
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/spitter/spitter-run-mask/spitter-run-mask-")
	end,
	["__base__/graphics/entity/spitter/spitter-die-1.png"] = function(t)
		if #t > 2 then
			TextureToSpritesConverter(t[#t - 2], MOD_NAME.."/graphics/entity/spitter/spitter-die-&/spitter-die-&-")
		end
	end,
	["__base__/graphics/entity/spitter/spitter-die-mask-1.png"] = function(t)
		if #t > 2 then
			TextureToSpritesConverter(t[#t - 2], MOD_NAME.."/graphics/entity/spitter/spitter-die-mask-&/spitter-die-mask-&-")
		end
	end,
	
	
	
	
	
	

	
	--[[steam-engine]]--
	["__base__/graphics/entity/steam-engine/steam-engine-horizontal.png"] = function(t)
		AddStripes(t[#t], 4, 2, CreateFilePaths(MOD_NAME.."/graphics/entity/steam-engine/steam-engine-horizontal-", ".png", 4))
		t[#t].line_length = nil
	end,
	["__base__/graphics/entity/steam-engine/steam-engine-vertical.png"] = function(t)
		AddStripes(t[#t], 4, 4, CreateFilePaths(MOD_NAME.."/graphics/entity/steam-engine/steam-engine-vertical-", ".png", 2))
		t[#t].line_length = nil
	end,
	
	
	--[[steel-chest]]--
	["__base__/graphics/entity/steel-chest/steel-chest.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[steel-furnace]]--
	["__base__/graphics/entity/steel-furnace/steel-furnace.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/steel-furnace/steel-furnace-fire.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/steel-furnace/steel-furnace-glow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/steel-furnace/steel-furnace-working-lighting.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/steel-furnace/steel-furnace-idle.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/steel-furnace/steel-furnace-fire.png"] = function(t)  OverrideSprite(t[#t], 1.96) end,
	
	
	--[[stone]]--
	["__base__/graphics/entity/stone/stone.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[stone-particle]]--
	["__base__/graphics/entity/stone-particle/stone-particle-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-particle/stone-particle-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-particle/stone-particle-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-particle/stone-particle-4.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[stone-furnace]]--
	["__base__/graphics/entity/stone-furnace/stone-furnace.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-furnace/stone-furnace-fire.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[stone-wall]]--
	["__base__/graphics/entity/stone-wall/wall-single.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-single-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-vertical-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-vertical-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-vertical-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-horizontal-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-horizontal-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-horizontal-3.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-corner-right-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-corner-right-down-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-corner-left-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-corner-left-down-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-t-down.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-t-down-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-ending-right.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-ending-right-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-ending-left.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/wall-ending-left-shadow.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[stone-wall-remnants]]--
	["__base__/graphics/entity/stone-wall/remains/wall-remain-01.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/remains/wall-remain-02.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/remains/wall-remain-03.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/remains/wall-remain-04.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/remains/wall-remain-05.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/remains/wall-remain-06.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/remains/wall-remain-07.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/stone-wall/remains/wall-remain-08.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[storage-tank]]--
	["__base__/graphics/entity/storage-tank/storage-tank.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[straight-rail]]--
	["__base__/graphics/entity/straight-rail/straight-rail-vertical-metals.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/straight-rail/straight-rail-vertical-backplates.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/straight-rail/straight-rail-vertical-ties.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/straight-rail/straight-rail-vertical-metals-remnants.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/straight-rail/straight-rail-vertical-stone-path.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/straight-rail/straight-rail-horizontal-backplates.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/straight-rail/straight-rail-horizontal-ties.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/straight-rail/straight-rail-horizontal-metals-remnants.png"] = function(t)  OverrideSprite(t[#t]) end,
	--["__base__/graphics/entity/straight-rail/straight-rail-horizontal-stone-path.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[substation]]--
	["__base__/graphics/entity/substation/substation.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[tank]]--
	["__base__/graphics/entity/tank/base-1.png"] = function(t)
		if #t > 2 and #t[#t - 1] == 4 then
			ScaleSprite(t[#t - 2])
			ChangeAnimation(t[#t], 4, 8)
			ChangeAnimation(t[#t - 1][2], 4, 8)
			ChangeAnimation(t[#t - 1][3], 4, 8)
			ChangeAnimation(t[#t - 1][4], 4, 8)
		end
	end,
	["__base__/graphics/entity/tank/turret.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[train-stop]]--
	["__base__/graphics/entity/train-stop/train-stop-bottom.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-ground.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-shadow.png"] = function(t)  
		TextureToSpritesConverter(t[#t], MOD_NAME.."/graphics/entity/train-stop/train-stop-shadow/train-stop-shadow-")
	end,
	["__base__/graphics/entity/train-stop/train-stop-top.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-top-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[train-stop lights north]]--
	["__base__/graphics/entity/train-stop/train-stop-north-light-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-north-light-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-north-light-2-glow.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[train-stop lights south]]--
	["__base__/graphics/entity/train-stop/train-stop-south-light-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-south-light-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-south-light-2-glow.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[train-stop lights east]]--
	["__base__/graphics/entity/train-stop/train-stop-east-light-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-east-light-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-east-light-2-glow.png"] = function(t)  OverrideSprite(t[#t]) end,
	--[[train-stop lights west]]--
	["__base__/graphics/entity/train-stop/train-stop-west-light-1.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-west-light-2.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/train-stop/train-stop-west-light-2-glow.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[water-splash]]--
	["__base__/graphics/entity/water-splash/water-splash.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[wooden-chest]]--
	["__base__/graphics/entity/wooden-chest/wooden-chest.png"] = function(t)  OverrideSprite(t[#t]) end,
	
	
	--[[worm]]--
	["__base__/graphics/entity/worm/worm-folded.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/worm/worm-folded-mask.png"] = function(t)  OverrideSprite(t[#t]) end,
	["__base__/graphics/entity/worm/worm-preparing-01.png"] = function(t)
		if #t > 2 then
			local part1 = CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-preparing-01/worm-preparing-01-", ".png", 14)
			local part2 = CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-preparing-02/worm-preparing-02-", ".png", 12)
			local combined = MergeTables({part1, part2})
			
			AddStripes(t[#t - 2], 1, 1, combined)
		end
	end,
	["__base__/graphics/entity/worm/worm-preparing-mask.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-preparing-mask/worm-preparing-mask-", ".png", 26))
	end,
	["__base__/graphics/entity/worm/worm-prepared.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-prepared/worm-prepared-", ".png", 10))
	end,
	["__base__/graphics/entity/worm/worm-prepared-mask.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-prepared-mask/worm-prepared-mask-", ".png", 10))
	end,
	["__base__/graphics/entity/worm/worm-attack-01.png"] = function(t)
		if #t > 2 then
			local part1 = CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-attack-01/worm-attack-01-", ".png", 64)
			local part2 = CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-attack-02/worm-attack-02-", ".png", 64)
			local combined = MergeTables({part1, part2})
			
			AddStripes(t[#t - 2], 1, 1, combined)
		end
	end,
	["__base__/graphics/entity/worm/worm-attack-mask-01.png"] = function(t)
		if #t > 2 then
			local part1 = CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-attack-mask-01/worm-attack-mask-01-", ".png", 64)
			local part2 = CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-attack-mask-02/worm-attack-mask-02-", ".png", 64)
			local combined = MergeTables({part1, part2})
			
			AddStripes(t[#t - 2], 1, 1, combined)
		end
	end,
	["__base__/graphics/entity/worm/worm-die.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-die/worm-die-", ".png", 24))
	end,
	["__base__/graphics/entity/worm/worm-die-mask.png"] = function(t)
		AddStripes(t[#t], 1, 1, CreateFilePaths(MOD_NAME.."/graphics/entity/worm/worm-die-mask/worm-die-mask-", ".png", 24))
	end,
	
	["__core__/graphics/cursor-boxes.png"] = function(t)
		ManualOverrideSprite(t, 128, 128, 4, MOD_NAME.."/graphics/style/cursor-boxes.png")
		--print(t.filename)
		--print(serpent.block(t))
		--print("changed gui")
	end,
	
	["__core__/graphics/cursor-boxes-32x32.png"] = function(t)
		ManualOverrideSprite(t, 128, 128, 4, MOD_NAME.."/graphics/style/cursor-boxes-32x32.png")
		--print(serpent.block(t))
		--print("changed gui")
	end,
}

local BannedTypes = 
{
	["technology"] = true,
	["item"] = true,
	["recipe"] = true,
	["item-subgroup"] = true,
	--["decorative"] = true,
	["tree"] = true,
	["ammo"] = true,
	["armor"] = true,
	["gun"] = true,
	["virtual-signal"] = true,
	["autoplace-control"] = true,
	["ammo-category"] = true,
	["recipe-category"] = true,
	["ambient-sound"] = true,
	["projectile"] = true,
	--["unit"] = true -- used to ban biter textures for now because they are implemented
}

function RecursiveOverrideBaseTextures(t)
	for k,v in pairs(t[#t]) do
		if type(v) == "string" then
			if ChangeTextureConfiguration[v] ~= nil and k ~= "icon" then
				ChangeTextureConfiguration[v](t)
				return true
			end
		elseif type(v) == "table" and v.hr_version == nil then
			local index = #t + 1
			t[index] = v
			RecursiveOverrideBaseTextures(t)
			t[index] = nil
		end
	end
end

for k, v in pairs(data.raw) do
	for k1, v1 in pairs(v) do
		if not BannedTypes[v1.type] and AllowChange(v1.name) then
			RecursiveOverrideBaseTextures({v1})
		end
	end
end



--[[
for k, v in pairs(data.raw.tile) do
	if v.name == "deepwater" then
		
	if v.variants.main then
		for k1, v1 in pairs(v.variants.main) do
			if v1.picture then
				print(v1.picture)
				v1.picture = string.gsub(v1.picture, "__base__", MOD_NAME)
			end
		end
	end
	if v.inner_corner then
		if v.inner_corner.picture then
			print(v.inner_corner.picture)
			v.inner_corner.picture = string.gsub(v.inner_corner.picture, "__base__", MOD_NAME)
		end
	end
	if v.outer_corner then
		if v.outer_corner.picture then
			print(v.outer_corner.picture)
			v.outer_corner.picture = string.gsub(v.outer_corner.picture, "__base__", MOD_NAME)
		end
	end
	if v.side then
		if v.side.picture then
			print(v.side.picture)
			v.side.picture = string.gsub(v.side.picture, "__base__", MOD_NAME)
		end
	end
	if  v.u_transition then
		if v.u_transition.picture then
			print(v.u_transition.picture)
			v.u_transition.picture = string.gsub(v.u_transition.picture, "__base__", MOD_NAME)
		end
	end
	if v.o_transition then
		if v.o_transition.picture then
			print(v.o_transition.picture)
			v.o_transition.picture = string.gsub(v.o_transition.picture, "__base__", MOD_NAME)
		end
	end
	end
end
]]--

--scaling technologies
--[[
for k, v in pairs(data.raw.technology) do
	if IsBase(v.icon) then
		print(v.icon)
		v.icon = string.gsub(v.icon, "__base__", MOD_NAME)
	end
end
]]--

--trees are a special case because there is so many files for them. Therefore they are checked here but only if they are of the type tree
if AllowChange("tree") then
	if AllowChange("tree", data.raw["tree"]["tree-01"].variations[1].leaves) then
		for k,trees in pairs(data.raw["tree"]) do
			if trees.variations then
				for k1, treeVariations in pairs(trees.variations) do
					local filename = treeVariations.trunk.filename
					if IsBase(filename) then
						OverrideSprite(treeVariations.leaves)
						filename = string.gsub(filename, ".png", "") -- not good to have it here... oh well
						filename = string.gsub(filename, "__base__", MOD_NAME)
					
						AddStripes(treeVariations.trunk, nil, nil, 
						{
							{filename.."-1.png", 3, 1},
							{filename.."-2.png", 2, 1}
						})
					end
				end
			end
		end
	end
end









