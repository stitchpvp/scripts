--[[
	Script Name	: SpawnScripts/SunkenCity/GerbardtheSnitch.lua
	Script Purpose	: Gerbard the Snitch 
	Script Author	: scatman
	Script Date	: 2009.08.01
	Script Notes	: 
--]]

local QUEST_1 = 275

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasCompletedQuest(Spawn, QUEST_1) then
		if HasQuest(Spawn, QUEST_1) then
			if GetQuestStep(Spawn, QUEST_1) == 2 then
				AddConversationOption(conversation, "I've returned with the pirate coins.", "dlg_8_1")
			end
		else
			AddConversationOption(conversation, "What happened?", "dlg_3_1")
		end
	end

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch000.mp3", "", "", 2512842567, 445857936, Spawn)
	AddConversationOption(conversation, "That sounds like something I'd rather stay out of.")
	StartConversation(conversation, NPC, Spawn, "Oh no! I did it again!  The boys back on the boat are gonna kill me!")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch001.mp3", "", "", 2460257667, 2197101465, Spawn)
	AddConversationOption(conversation, "I'll do it, whats involved?", "OfferQuest1")
	AddConversationOption(conversation, "Not today, sorry.")
	StartConversation(conversation, NPC, Spawn, "I blew all my coins on a game of dice.  I just need a few more pirate coins to throw in, and I'll earn back my money in no time! Will you help me out? My crew will toss me overboard if they find out how much money I lost!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function dlg_8_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch003.mp3", "", "", 1766615640, 492599183, Spawn)
	AddConversationOption(conversation, "Good luck.")
	StartConversation(conversation, NPC, Spawn, "You're a lifesaver!  Now it's time to win it all back.")
end