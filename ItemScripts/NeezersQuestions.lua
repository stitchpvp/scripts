--[[
	Script Name	: ItemScripts/NeezersQuestions.lua
	Script Purpose	: Neezer's Questions
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes :
--]]

local GNOME_MENTOR_QUEST_3 = 28

function examined(Item, Player)
	if HasQuest(Player, GNOME_MENTOR_QUEST_3) and GetQuestStep(Player, GNOME_MENTOR_QUEST_3) == 1 then
		SetStepComplete(Player, GNOME_MENTOR_QUEST_3, 1)
	end
	
	conversation = CreateConversation()
	AddConversationOption(conversation, "Continue Reading", "ContinueReading")
	AddConversationOption(conversation, "Put note away.")
	StartDialogConversation(conversation, 2, Item, Player, "It is very important these questions be asked in order and that none of them are skipped. Again, please remember the FIRST word in each person's answer.\n\nQuestion 1: If you were to calibrate a Fizzo Torque Wrench for work in Lavastorm and then attempt precisely the same in Everfrost what difference of calibration would be needed?\n\nQuestion 2: What is the average measurement between Keen and Preen on a Spectromatic Nest-Druther?\n\nQuestion 3: If given a choice in a vote for the new Queen of Qeynos, would you cast your vote for a nut or a bolt?")
end

function ContinueReading(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put note away.")
	StartDialogConversation(conversation, 2, Item, Player, "Question 4: Though not yet officially proven, which theory concerning thermodynamic particle acceleration and its correlation to metaphysical tides is widely accepted?\n\nQuestion 5: Isn't Neezer Grund amazing?\n\nQuestion 6: The Banton particle is supposed to generate high amounts of what?")
end
