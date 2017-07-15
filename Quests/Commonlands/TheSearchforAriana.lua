--[[
	Script Name		:	TheSearchforAriana.lua
	Script Purpose	:	Handles the quest, "The Search for Ariana"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/15/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Ariana Neovra", 1, "I need to find Ariana Neovra in the Wailing Caves.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found Ariana Neovra.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Ariana Neovra in a cell in the Wailing Caves.")

	AddQuestStepChat(Quest, 2, "I need to return to Orwen", 1, "I need to return Ariana's necklace to Orwen.", 576, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I returned to Orwen.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned Ariana's necklace to Orwen.")

	UpdateQuestDescription(Quest, "I found Ariana in a cell in the Wailing Caves.  She sacrificed her life for the rest of her people, and agreed to stay with the orcs, halting an attack on their camp.  She wanted Orwen to move on so as not to hurt himself and rekindle the orcs' threat.  She gave me a necklace to give to Orwen to convince him that she wasn't alive.  Orwen accepted the news and gave me the stiletto he made.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end