function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Are you a guard or something?", "Option1")
	AddConversationOption(conversation, "You're excused.  ")
	StartConversation(conversation, NPC, Spawn, "Greetings to you as well, traveler.  Now if you'll excuse me, I must remain vigilant while this time is appointed unto me.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I see. I'll leave you to your thoughts. ")
	StartConversation(conversation, NPC, Spawn, "A guard? No. I suppose if I have a title, you can call me a ... a pilgrim.  Yes, just a pilgrim looking for the light of truth.  Aren't we all seeking a little truth in these turbulent times?")
end
