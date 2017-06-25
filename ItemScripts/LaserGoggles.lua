--[[
	Script Name		:	ItemScripts/LaserGoggles.lua
	Script Purpose	:	
	Script Author	:	fearfx
	Script Date		:	6/15/2016
	Script Notes	:	
--]]

function used(Item, Player)
    local encounter = GetEncounter(NPC)
    if encounter ~= nil then
        for index, value in pairs(encounter) do
            Say(NPC, GetName(value))
            SendMessage(Player, GetName(value), "yellow")
        end
    end
end