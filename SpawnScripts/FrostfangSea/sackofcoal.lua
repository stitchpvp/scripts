--[[
	Script Name	: SpawnScripts/FrostfangSea/sackofcoal.lua
	Script Purpose	: "sack of coal" sign
	Script Author	: theFoof
	Script Date	: 2013.5.15
	Script Notes	:
--]]

local HadAHammer = 12

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
SpawnMob(NPC)
end

function SpawnAccess(NPC, Player)
    if GetQuestStep(Player, HadAHammer) > 1 then
	    AddSpawnAccess(NPC, Player)
	end
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "gather coal" then
	    if HasItem(Caster, 5771) == false and HasQuest(Caster, HadAHammer) then
		    SummonItem(Caster, 5771)
		end
	end
end
