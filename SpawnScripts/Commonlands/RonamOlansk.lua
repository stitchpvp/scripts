function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I might be able to drive them off...", "Option1")
	AddConversationOption(conversation, "Dead orcs?  Head for the hills!  Flee!")
	StartConversation(conversation, NPC, Spawn, "Please stay away from here! The dead souls of orcs callout for vengeance, and I'll not put you or the rest of my people in danger.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "A reward, eh?  That sounds more like my style...")
	AddConversationOption(conversation, "What a pathetic waste of my time.  I'll not kill your skeletons for you.", "Option2")
	StartConversation(conversation, NPC, Spawn, "I'm not so certain...  but I suppose there's no harm in letting you risk your own life trying.  If you kill enough of the skeletons inside the cave, the skeletons outside may return to their resting place.  My people and I will scrape together what little we have to pay for your services.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Don't worry about me.  Have concern with your villagers until the job is done.", "Option3")
	StartConversation(conversation, NPC, Spawn, "I know the task will not be easy.The halls of the Wailing Caves are haunted with the angry, tormented ghosts of orcs left to a grisly death by the members of the Freeport Militia.  I imagine quite a few will need to fall before any progress can be made.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll leave you alone then.", "Option4")
	StartConversation(conversation, NPC, Spawn, "At least I can find peace and solitude in fishing.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll leave you alone then.")
	StartConversation(conversation, NPC, Spawn, "At least I can find peace and solitude in fishing.")
end
