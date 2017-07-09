--[[
	Script Name		:	DoorDie,SaysIrizan.lua
	Script Purpose	:	Handles the quest, "Do or Die, Says Irizan"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	7/8/2017
	Script Notes	:	

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Merchant Edmond at the Crossroads", 1, "My contact is Merchant Edmond at the Crossroads.  He will give me my assignment.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Merchant Edmond.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've got my assignment from Edmond. I'm supposed to help a dark elf. Huh?")

	AddQuestStepChat(Quest, 2, "I should speak with V'tal Narin", 1, "Help the dark elf at the Crossroads and give whatever I find to Merchant Edmond.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I spoke to V'tal Narin.")

	AddQuestStep(Quest, 3, "I am to help V'tal Narin, if I haven't helped her already", 1, 100, "Help the dark elf at the Crossroads and give whatever I find to Merchant Edmond.", 11)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've helped V'tal Narin.")

	AddQuestStepChat(Quest, 4, "Now that I have helped V'tal Narin, I should return to Edmond at the Crossroads", 1, "Help the dark elf at the Crossroads and give whatever I find to Merchant Edmond.", 11, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've given the items to Edmond.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Edmond the items I found while helping V'tal Narin.")

	AddQuestStepChat(Quest, 5, "Deliver report to Inquisitor Irizan", 1, "I need to deliver this ledger to Inquisitor Irizan.", 716, --[[ ID's --]])
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've given Edmonds' report to Irizan.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've given Irizan the report on V'tal")

	UpdateQuestDescription(Quest, "I was merely a pawn in a spy game on an individual who claims to be from Qeynos.  I have no idea what is really going on; it would be best for me to stay clear of this lot.  Though he promised to give me something, all I got were a few coins.  I'm steering clear of this group from now on; they don't seem very trustworthy.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end