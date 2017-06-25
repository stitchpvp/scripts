--[[
	Script Name		:	ItemScripts/SpiritReaper.lua
	Script Purpose	:	Spirit Reaper
	Script Author	:	FeaRFx
	Script Date		:	2016.6.15
	Script Notes	:	
--]]

local Reaping = 152

function used(Item, Player)
	if GetQuestStep(Player, Reaping) == 1 then
		local target = GetTarget(Player)
		if GetName(target) == "a pure spirit" then
		    SendMessage(Player, "YEP.", "yellow")
			CastEntityCommand(Player, target, 1, "Reap")
		else
			SendMessage(Player, "NOPE.", "yellow")
		end
	end
end

function examined(Item, Player)
	if GetQuestStep(Player, Reaping) == 1 then
		local target = GetTarget(Player)
		if GetName(target) == "a pure spirit" then
		    SendMessage(Player, "YEP.", "yellow")
			CastEntityCommand(Player, target, 1, "Reap")
		else
			SendMessage(Player, "NOPE.", "yellow")
		end
	end
end