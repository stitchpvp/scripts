--[[
	Script Name		:	SpawnScripts/Nektropos1/p19EliseSecretDoorScontz.lua
	Script Purpose	:	
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	
--]]

function spawn(NPC)
	SetRequiredHistory(NPC, 2, 1)
end

function respawn(NPC)
	spawn(NPC)
end