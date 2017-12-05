--[[
	Script Name	: SpawnScripts/Caves/FulkoirHaggleton.lua
	Script Purpose	: Fulkoir Haggleton
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	:
--]]

function spawn(NPC)
end

function respawn(NPC)
SpawnMob(NPC)
end

function hailed(NPC, Spawn)
end

function aggro(NPC, Spawn)
	Say(NPC, "This is entirely unnacceptable!")
end
