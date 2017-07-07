function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Defeat who?", "Option1")
	AddConversationOption(conversation, "I need to leave.")
	StartConversation(conversation, NPC, Spawn, "Well look at you! I wonder, would you be able to defeat him?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "So you need me to slay him?")
	AddConversationOption(conversation, "I need to leave.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Ahh, Vindiami the Ancient. I'm afraid that the Necrosis goblin clan will figure out how to wake him from his slumber and then... WHAM! He'll go on a rampage in Qeynos.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I will see you later then.")
	StartConversation(conversation, NPC, Spawn, "Yep, you need to go into the Condemned Catacombs and figure out how to wake and slay the beast. Good luck, you're going to need all of it you can get.")
end
