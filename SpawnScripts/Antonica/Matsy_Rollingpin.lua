function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Hello to you, too. What are you cooking? Smells great!", "Option1")
	AddConversationOption(conversation, "Sorry, no time to talk.")
	StartConversation(conversation, NPC, Spawn, "Let's see now. Salt, good stock... I will need to brown that flour and... Oh, hello there!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I have time. What did you need?", "Option2")
	AddConversationOption(conversation, "Sorry, I'm kind of busy.")
	StartConversation(conversation, NPC, Spawn, "I'm making a lovely, warm chowder to share with those in need. However, I seem to have forgotten an ingredient. Could you be a doll and run an errand for me?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Alright.", "Option3")
	StartConversation(conversation, NPC, Spawn, "I need you to purchase some pepper from Merchant Novak and bring it back here. She makes her stand out by the lighthouse near the docks.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, you bet!")
	StartConversation(conversation, NPC, Spawn, "Be as swift as you can...  I wouldn't want my roux to clump!")
end
