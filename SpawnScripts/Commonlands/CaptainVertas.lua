function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What does the job pay?", "Option1")
	AddConversationOption(conversation, "No, I don't have time right now.")
	StartConversation(conversation, NPC, Spawn, "Pah, the orcs and the dervish... Listen, the Freeport Militia requires your help. Will you do a service for the Militia?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Whatever. I'll work for you. Getting paid is nice, though", "Option2")
	AddConversationOption(conversation, "Right, I'll be on my way.")
	StartConversation(conversation, NPC, Spawn, "Pay... PAY? You insolent pig, you should be bowing down at my feet asking me for forgiveness. You ought to  be paying homage to the Overlord for all he has given you!")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What will I do when I find him?", "Option3")
	AddConversationOption(conversation, "Find someone else. I don't have time.")
	StartConversation(conversation, NPC, Spawn, "You will be compensated for your time. There have been reports of a growing threat in the Commonlands. The militia requires you to travel to the west to the road beyond the druid ring to find the orc emissary.   Our reports tell us the emissary is the one who is passing stolen information to the Deathfist Empire.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will serve the Overlord.")
	AddConversationOption(conversation, "Maybe later.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Deal with him by any means necessary! Bring back to me any evidence you may find.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "I know you will. Return to me immediately once this is complete.")
end
