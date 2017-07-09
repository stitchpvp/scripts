function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What assistance do you require?", "Option1")
	AddConversationOption(conversation, "I'm busy at the moment.")
	StartConversation(conversation, NPC, Spawn, "I need some assistance. Would you be willing to aid me?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "Option2")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "The heat out here is ridiculous and I am parched. I would do anything for some nice cool water. The water around here gets so filthy from the livestock. Even as hot as it is, I can't just drink any water, you know? Do you think you could go out and fill each of these flasks with clean water from the lake and river for me? Oh, and I will also need one of them filled from the sea. Mooshga always needs more salt for curing her specialties.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Of course.", "Option3")
	StartConversation(conversation, NPC, Spawn, "Do make sure there are no parasites in the water.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Of course.")
	StartConversation(conversation, NPC, Spawn, "Do make sure there are no parasites in the water.")
end
