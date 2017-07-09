function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Just browsing.")
	AddConversationOption(conversation, "Irizan sent me.", "Option1")
	StartConversation(conversation, NPC, Spawn, "Are you looking for something in particular? ")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Do I have a choice?", "Option2")
	StartConversation(conversation, NPC, Spawn, "So, you're the one he sent, huh?  I take it you want your assignment.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Got it.  Just give me my assignment.", "Option3")
	StartConversation(conversation, NPC, Spawn, "No, no you don't.  And don't go getting any funny ideas.  A bit of free advice, stranger: Don't cross Irizan.  That is one man you don't want on your bad side.  Got it?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Got it.")
	StartConversation(conversation, NPC, Spawn, "All right. Find the dark elf at the other side of this here crossroads.  You can't miss her; just listen for the whiny little wretch.  You're going to lend her a hand.  Do what ever you can to help.  Your future is at stake.  Don't screw this up.  And whatever you find while aiding her, you return to me.  Understand?")
end
