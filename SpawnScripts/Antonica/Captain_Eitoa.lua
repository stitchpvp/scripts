

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Then perhaps I could be of service. ", "Option1")
	AddConversationOption(conversation, "Ok, thanks anyway.")
	StartConversation(conversation, NPC, Spawn, "I wouldn't mind chatting with you in Irontoe's East, but here I've got work to do.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "It is the least I can do for Qeynos.", "Option2")
	AddConversationOption(conversation, "That sounds a bit too far for me.")
	StartConversation(conversation, NPC, Spawn, "There is something you can do. I've posted a guard at the Keep of the Ardent Needle, and he hasn't been reporting to me as often as I'd like. Would you go inspect the keep and make sure everything is in order?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return after I've performed the inspection.")
	StartConversation(conversation, NPC, Spawn, "Go then.  You'll find the Keep on the north side of the ridge, just this side of the Tower of the Oracles. It's one of the few keeps in pristine condition.")
end

function respawn(NPC)
end
