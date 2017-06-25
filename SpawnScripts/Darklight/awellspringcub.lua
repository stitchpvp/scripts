--[[
	Script Name		:	Quests/Darklight/awellspringcub.lua
	Script Purpose	:	for the spawn "a wellspring cub" (340061)
	Script Author	:	Cynnar
	Script Date		:	2/5/2016
	Script Notes	:	<special-instructions>
--]]

local DrawUponWellsprings = 155

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Caster, SpellName)
    if SpellName == "Leash" then
	    if GetQuestStep(Caster, DrawUponWellsprings) == 1 then
			if GetTempVariable(Caster, "cub") == nil then
				SetTempVariable(Caster, "cub", NPC)
				SpawnSet(NPC, "attackable", "0")
				SpawnSet(NPC, "show_level", "0")
				SetFollowTarget(NPC, Caster)
				SetSpeed(NPC, 9)
				ToggleFollow(NPC)
			end
		end
	end
end