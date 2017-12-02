--[[
	Script Name	: SpawnScripts/SunkenCity/Lukur.lua
	Script Purpose	: Lukur <General Goods>
	Script Author	: scatman
	Script Date	: 2009.08.01
	Script Notes	: 
--]]

local QUEST_1 = 276

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, QUEST_1) then
		if HasQuest(Spawn, QUEST_1) then
			if GetQuestStep(Spawn, QUEST_1) == 4 then
				AddConversationOption(conversation, "I've returned with the masks.", "dlg_12_1")
			end
		else
			AddConversationOption(conversation, "Who are you?", "dlg_4_1")
		end
	end

	PlayFlavor(NPC, "voiceover/english/optional1/lukur/fprt_adv01_sunken/lukur000.mp3", "", "", 1584752461, 2942049134, Spawn)
	
	AddConversationOption(conversation, "I'm not one to be sifting through other people's things.")
	StartConversation(conversation, NPC, Spawn, "This place is a wellspring for me.  Look around!  Crates and barrels full of abandoned goods just waiting to be uncovered.  There are far too many for me to search alone.")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/lukur/fprt_adv01_sunken/lukur001.mp3", "", "", 3143062912, 3824299878, Spawn)
	AddConversationOption(conversation, "I think I can help you.", "OfferQuest1")
	AddConversationOption(conversation, "Not right now, sorry.")
	StartConversation(conversation, NPC, Spawn, "My name's Lukur, and I deal antiques.  I was told of the riches waiting to be discovered here, but I didn't believe it until I arrived.  Will you help me search for some valuables?")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_12_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 4)
	
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/optional1/lukur/fprt_adv01_sunken/lukur003.mp3", "", "", 1196217033, 2873878783, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Look at the amazing quality of these ancient masks! You did well. Here is your reward.")
end