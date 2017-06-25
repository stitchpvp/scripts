--[[
	Script Name	: SpawnScripts/Darklight/astrangeplant.lua
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

function spawn(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if not HasCompletedQuest(Caster, 79) and not HasQuest(Caster, 79) then
		OfferQuest(Target, Caster, 79)
	end
end
