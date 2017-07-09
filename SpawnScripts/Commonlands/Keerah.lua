function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll leave you for now.")
	AddConversationOption(conversation, "What are you doing here?", "Option1")
	StartConversation(conversation, NPC, Spawn, "What do you want?  I highly doubt my victims are coming to me nowadays just to hand me their valuables, so you must want something from me.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "How did they know it was you?", "Option2")
	StartConversation(conversation, NPC, Spawn, "You'd live out here too if the Militia wanted your pelt.  Lift one bag of platinum from a tax collector and they get all up in a huff.  They didn't seem to mind when it was just foreigners who were losing things.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Now, that's an intelligent question.  How did the guards know?  Perhaps they employ a clairvoyant who saw me take it?  Maybe I tripped over my tail, the tax collector caught me, and I made a daring escape?  No!  Someone ratted me out!  When I find out who, I'll claw their eyes out!")
end
