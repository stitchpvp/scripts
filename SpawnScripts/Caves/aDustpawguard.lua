--[[
	Script Name	: SpawnScripts/Caves/aDustpawguard.lua
	Script Purpose	: a Dustpaw guard 
	Script Author	: Scatman
	Script Date	: 2009.10.27
	Script Notes	: 
--]]

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	if sli == 147659 then
		WandererFirstLevel(NPC)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function WandererFirstLevel(NPC)
	MovementLoopAddLocation(NPC, 41.01, 2.37, -92.92, 3, 0)
	MovementLoopAddLocation(NPC, 35.79, 2.68, -90.33, 3, 0)
	MovementLoopAddLocation(NPC, 29.83, 3.35, -84.94, 3, 0)
	MovementLoopAddLocation(NPC, 25.36, 4.15, -80.91, 3, 0)
	MovementLoopAddLocation(NPC, 22.53, 4.92, -67.89, 3, 0)
	MovementLoopAddLocation(NPC, 24.69, 4.29, -80.3, 3, 0)
	MovementLoopAddLocation(NPC, 33.09, 3.03, -88.46, 3, 0)
	MovementLoopAddLocation(NPC, 39.22, 2.71, -90.14, 3, 0)
	MovementLoopAddLocation(NPC, 44.67, 2.52, -94.47, 3, 0)
	MovementLoopAddLocation(NPC, 55.8, 2.73, -92.21, 3, 0)
	MovementLoopAddLocation(NPC, 47.22, 2.57, -91.68, 3, 0)
end

--[[
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_death_9c1f07cb.mp3", "Another member of the pack down!", "", 3426629421, 3660282518, Spawn)
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 2385604574, 3717589402, Spawn)
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_fad67c0f.mp3", "Grrrolven brakth kerrtt", "", 1531034367, 952662328, Spawn)
PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_fe1eedd8.mp3", "Rrrrevvvvnarrr jahht ttekkkman", "", 1674950709, 3936377565, Spawn)
--]]