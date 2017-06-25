--[[
	Script Name	: SpawnScripts/QueensColony/aformidablesparringpartner.lua
	Script Purpose	: a formidable sparring partner 
	Script Author	: John Adams
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function death(NPC, Spawn)
	choice = math.random(1,2)
	
	if choice == 1 then
		PlayFlavor(NPC, "", "Well done!", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Okay, who's next?", "", 1689589577, 4560189, Spawn)
	end
end

