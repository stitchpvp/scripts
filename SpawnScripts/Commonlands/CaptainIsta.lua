function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need done?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Glad you could make it. Now how about doing a little something for Freeport?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I think I can do that.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Freeport needs you to follow the trail of slime outside of the Sewer System to the north of here. You will need to slay the oversized sliding lump of refuse known as the Gobbler.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok, I will see you later then.")
	StartConversation(conversation, NPC, Spawn, "Of course you do... that's the same thing the last group of adventurers said and look here, I still need to get this job done. Hurry along now, Freeport does not like to wait.")
end
