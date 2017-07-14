function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "My name is Melendred and I dislike all that Marr represents. Farewell.")
	AddConversationOption(conversation, "My name is Melendred and I am ready to serve Marr.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Finally! Marr has sent me a worthy assistant. What is your name and are you ready to serve the Order of Marr, defenders of valor and love?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I shall liberate the statues.")
	StartConversation(conversation, NPC, Spawn, "Then I salute you for your bravery. Your crusade is to liberate a number of the sacred Cavalier statues in the Commonlands. Evil spirits have been bound to them. You must destroy them for Marr. Good luck Melendred and may Marr go with you.")
end
