--[[
	Script Name		:	SpawnScripts/Darklight/Sableveinrubble.lua
	Script Purpose	:	Sablevein Rubble
	Script Author	:	Cynnar
	Script Date		:	10/13/2015
	Script Notes	:	
--]]

local SableveinRubble = 137

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 10, "SpawnAccess", "SpawnAccess")
    SetRequiredQuest(NPC, SableveinRubble, 1)
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, SableveinRubble) and not HasItem(Spawn, 11836) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "harvest " then
	    if HasQuest(Spawn, SableveinRubble) and HasItem(Spawn, 11836) <= 6 then
			Despawn(NPC)
			SummonItem(Spawn, 11836)
		end
	end
end