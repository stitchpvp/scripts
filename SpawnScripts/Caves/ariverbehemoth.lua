--[[
	Script Name	: SpawnScripts/Caves/ariverbehemoth.lua
	Script Purpose	: a river behemoth
	Script Author	: Scatman
	Script Date	: 2009.05.18
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
	local Remains = SpawnMob(GetZone(Spawn), 1970147, false, GetX(NPC), GetY(NPC), GetZ(NPC))
	Despawn(Remains, 60000)
end