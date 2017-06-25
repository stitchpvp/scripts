--[[
	Script Name	: ItemScripts/DrawingRay.lua
	Script Purpose	: Drawing Ray
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local CAVES_CONSUL_BREE_QUEST_3 = 225

function used(Item, Player)
	if HasQuest(Player, CAVES_CONSUL_BREE_QUEST_3) and not QuestStepIsComplete(Player, CAVES_CONSUL_BREE_QUEST_3, 4) then
		spawn = GetTarget(Player)
		if spawn ~= nil then
		
			-- river behemoth remains
			if GetSpawnID(spawn) == 1970147 then
				AddPrimaryEntityCommand(Player, spawn, "Remove River Stone")
			else
				SendMessage(Player, "The Drawing Ray has no effect. Emma said it must be used on the remains of a river behemoth.")
			end
		end
	end
end