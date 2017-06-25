--[[
	Script Name	: SpawnScripts/Ruins/aBrokentuskguard.lua
	Script Purpose	: a Brokentusk guard
	Script Author	: Scatman
	Script Date	: 2009.08.21
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/BrokentuskVoiceOvers.lua")
local spoke = false

function spawn(NPC)
	spoke = false
	local sli = GetSpawnLocationID(NPC)
	
	-- Wanderer from where the 'an Overseer' spawns.
	if sli == 159745 or sli == 159747 or sli == 159748 then
		AddTimer(NPC, math.random(0, 10000), "StartPath1")
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function aggro(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		generic_aggro(NPC, Spawn)
	end
end

function healthchanged(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		local health_percent = GetHP(NPC) / GetMaxHP(NPC)
		if health_percent < 0.50 and spoke == false then
			spoke = true
			generic_healthchanged(NPC, Spawn)
		end
	end
end

function killed(NPC, Spawn)
	generic_killed(NPC, Spawn)
end

function death(NPC, Spawn)
	spoke = false
	local chance = math.random(0, 100)
	if chance <= 25 then
		generic_death(NPC, Spawn)
	end
end

function StartPath1(NPC)
	MovementLoopAddLocation(NPC, -125.34, -2.58, 19.62, 2, 0)
	MovementLoopAddLocation(NPC, -122.78, -2.57, 15.73, 2, 0)
	MovementLoopAddLocation(NPC, -117.87, -2.59, 17.3, 2, 0)
	MovementLoopAddLocation(NPC, -76.73, -2.71, 24.55, 2, 0)
	MovementLoopAddLocation(NPC, -73.53, -2.54, 26.24, 2, 0)
	MovementLoopAddLocation(NPC, -48.93, -2.69, 27.93, 2, 0)
	MovementLoopAddLocation(NPC, -46.17, -2.35, 32.92, 2, 0)
	MovementLoopAddLocation(NPC, -50.97, -2.43, 34.96, 2, 0)
	MovementLoopAddLocation(NPC, -53.88, -2.53, 32.99, 2, 0)
	MovementLoopAddLocation(NPC, -76.87, -2.7, 30.25, 2, 0)
	MovementLoopAddLocation(NPC, -83.46, -2.75, 34.99, 2, 0)
	MovementLoopAddLocation(NPC, -95.79, -2.71, 33.15, 2, 0)
	MovementLoopAddLocation(NPC, -99.36, -2.66, 24.91, 2, 0)
	MovementLoopAddLocation(NPC, -122.67, -2.59, 20.15, 2, 0)
	MovementLoopAddLocation(NPC, -127.83, -2.6, 24.48, 2, 0)
	MovementLoopAddLocation(NPC, -138.1, -2.6, 30.88, 2, 0)
	MovementLoopAddLocation(NPC, -138.54, -2.58, 21.98, 2, 0)
end