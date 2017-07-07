function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, why not?", "Option1")
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Hah!  We've so many adventurers out these days that I think the gnolls decided to push back a bit.  We heard that they're plotting inside Blackburrow.  Think you could help us out?")
  
	AddConversationOption(conversation, "Sure, I could stand some.")
	StartConversation(conversation, NPC, Spawn, "Ahh, well done!  Here's that coin I promised.  Looking for more work?")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sounds good.")
	StartConversation(conversation, NPC, Spawn, "We need information from a group of gnolls. Let me take a look at that little book at your side, and I'll write down what we're looking for. When you get back, I'll have a fat purse waiting for you!")
end
