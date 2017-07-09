
local QUEST_1_FROM_IRIZAN = 301

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function InRange(NPC, Spawn)
Say(NPC, "Why hasn't my brother written me? What happened to him? Citizen, why are you bothering me?", Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What others?", "Option12")
	AddConversationOption(conversation, "Fine!")
	StartConversation(conversation, NPC, Spawn, "Get away from me! You're like the others!") 
  if HasQuest(Spawn, QUEST_1_FROM_IRIZAN) then
	  AddConversationOption(conversation, "Goodbye.")
	  AddConversationOption(conversation, "I'm here as a favor to someone else.", "Option13")
	  StartConversation(conversation, NPC, Spawn, "You ridicule my loss as well!")
end

function Option12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You ridicule my loss as well!")
end

function Option13(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "No, and I don't care.")
	AddConversationOption(conversation, "No, I haven't.", "Option14")
	StartConversation(conversation, NPC, Spawn, "You haven't heard about my brother's failed expedition into Fallen Gate?")
end

function Option14(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What would you be willing to give someone to look for it?", "Option15")
	AddConversationOption(conversation, "I could look for it for you.", "Option16")
	AddConversationOption(conversation, "Well I'm certainly not going to help you.")
	StartConversation(conversation, NPC, Spawn, "Three months ago, my brother left on an expedition to look for an old family heirloom in Fallen Gate. About two weeks ago he stopped writing me, and I'm afraid he lost the heirloom. I would look for it but I must take care of important matters here.")
end

function Option15(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	StartConversation(conversation, NPC, Spawn, "If you find the heirloom, I will pay for your services. If you can, find out what happened to my worthless brother.")
end

function Option16(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Alright, I'll do it.", "Option17")
	AddConversationOption(conversation, "I'm sorry, but I don't have time to help you.")
	StartConversation(conversation, NPC, Spawn, "If you find the heirloom, I will pay for your services. If you can, find out what happened to my worthless brother.")
end

function Option17(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What was your brother looking for?", "Option18")
	StartConversation(conversation, NPC, Spawn, "Excellent ... in the last letter I received from him, he said he found my family's heirloom and was returning with it.  I have not heard from him since.")
end

function Option18(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What if your brother is no longer alive?", "Option19")
	StartConversation(conversation, NPC, Spawn, "That is information you need not know.  My brother took a small lockbox to carry the item.  When you find him, he should have the box.")
end

function Option19(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return once I have found your brother and the box.", "Option20")
	StartConversation(conversation, NPC, Spawn, "If that is so, then bring me just the box. It is made of dark wood and has a falcon engraved on its lid.")
end

function Option20(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What was your brother looking for?", "Option21")
	StartConversation(conversation, NPC, Spawn, "Excellent ... in the last letter I received from him, he said he found my family's heirloom and was returning with it.  I have not heard from him since.")
end

function Option21(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What if your brother is no longer alive?", "Option22")
	StartConversation(conversation, NPC, Spawn, "That is information you need not know.  My brother took a small lockbox to carry the item.  When you find him, he should have the box.")
end

function Option22(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return once I have found your brother and the box.")
	StartConversation(conversation, NPC, Spawn, "If that is so, then bring me just the box. It is made of dark wood and has a falcon engraved on its lid.")
end
