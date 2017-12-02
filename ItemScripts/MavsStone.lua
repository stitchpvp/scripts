--[[
	Script Name	: ItemScripts/MavsStone.lua
	Script Purpose	: Mav's Stone
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes :
--]]

local DWARF_MENTOR_QUEST_4 = 297

function examined(Item, Player)
	local conversation = CreateConversation()
	if HasQuest(Player, DWARF_MENTOR_QUEST_4) then
		local x1 = GetX(Player)
		local y1 = GetY(Player)
		local z1 = GetZ(Player)
		local x2 = 897.01
		local y2 = -22.31
		local z2 = -113.83
		local x = math.pow(x2 - x1, 2)
		local y = math.pow(y2 - y1, 2)
		local z = math.pow(z2 - z1, 2)
		local distance = math.sqrt((x + y + z))
		if distance <= 10.0 then
			AddConversationOption(conversation, "Hold the stone in your hand and focus on it.", "HoldStone")
		end
	end
	AddConversationOption(conversation, "Put the stone away.")
	StartDialogConversation(conversation, 2, Item, Player, "The stone is cold and rough, your instincts tell you it would be a good stone for building.")
end

function HoldStone(Item, Player)
	if GetQuestStep(Player, DWARF_MENTOR_QUEST_4) == 1 then
		SetStepComplete(Player, DWARF_MENTOR_QUEST_4, 1)
	end
	
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Put the stone away.")
	StartDialogConversation(conversation, 2, Item, Player, "When you focus on the stone there is an almost audible sense of hammers and chisels working at stone, carts moving back and forth, and a low hum of an ancient dwarven work song.")
end
