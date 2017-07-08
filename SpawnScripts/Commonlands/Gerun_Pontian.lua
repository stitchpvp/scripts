function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What makes it so dreary?", "Option1")
	AddConversationOption(conversation, "I have to go.")
	StartConversation(conversation, NPC, Spawn, "Gerun Pontian of the Militia. I watch the gates. I assure you a more dreary job does not exist in all of D'Lere.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How does this post turn profit?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Who attacks the gates of Freeport? Orcs? Dervish Cutthroats? Qeynosians? Hah! The only good thing about this post is it gives me a lot of time. And even the most daft of fools knows that time equals money.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do you need?", "Option3")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Like I said, I've got free time. So while I'm out here I can acquire commodities that I can then sell to the merchants of Freeport. If I can't be out there earning glory, I'll stay back here and earn coin. Care to help?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure.", "Option4")
	StartConversation(conversation, NPC, Spawn, "Venom has been selling quite nicely. There are quite a few speckled rattlers around here. They're a great source of venom. If you bring me back the venom from eight of them I'll give you a portion of what the profit will be. Sound good?")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Great! I'll be here, of course.")
end
