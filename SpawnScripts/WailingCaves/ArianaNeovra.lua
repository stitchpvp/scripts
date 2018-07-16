function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	

	if HasQuest(Spawn, 187) and GetQuestStep(Spawn, 187) == 1 then
		AddConversationOption(conversation, "Orwen sent me to look for you.", "Option1")
		AddConversationOption(conversation, "Ok, I'll be going then.")
		StartConversation(conversation, NPC, Spawn, "There's more than meets the eye here, friend. Don't fret! My destiny is by choice.")
	else
		AddConversationOption(conversation, "Ok, I'll be going then.")
		StartConversation(conversation, NPC, Spawn, "There's more than meets the eye here, friend. Don't fret! My destiny is by choice.")
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I see, go on.", "Option2")
	StartConversation(conversation, NPC, Spawn, "I miss Orwen so much, but you must understand that I chose to stay here.  The orcs were planning an attack on my people, and I made a deal to cooperate with them and halt the attack.  While I 'm forced to stay here, at least I know my people, especially Orwen, are safe.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "You are very brave, I'll take this back to Orwen.")
	StartConversation(conversation, NPC, Spawn, "If Orwen comes looking for me, they will kill us both and launch their attack. You must make Orwen believe I'm gone. This will force him to move on. Here, take this necklace back to him. He knows I would never part with this necklace if I were alive.")
	SetStepComplete(Spawn, 187, 1)
end